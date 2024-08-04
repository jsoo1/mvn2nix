package com.fzakaria.mvn2nix.maven;

import com.fzakaria.mvn2nix.maven.MaybeResolvedArtifact;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.Runtime;
import eu.maveniverse.maven.mima.context.Runtimes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Set;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.maven.lifecycle.mapping.Lifecycle;
import org.apache.maven.lifecycle.mapping.LifecycleMapping;
import org.apache.maven.lifecycle.mapping.LifecycleMojo;
import org.apache.maven.lifecycle.mapping.LifecyclePhase;
import org.apache.maven.lifecycle.providers.packaging.PublicLifecycleMappings;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.Plugin;
import org.apache.maven.model.ReportPlugin;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuilder;
import org.apache.maven.model.building.ModelBuildingException;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.project.ProjectBuildingRequest;
import org.apache.maven.project.ProjectModelResolver;
import org.apache.maven.project.PublicReactorModelPool;
import org.eclipse.aether.RequestTrace;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.graph.DependencyFilter;
import org.eclipse.aether.graph.DependencyNode;
import org.eclipse.aether.graph.Exclusion;
import org.eclipse.aether.impl.RemoteRepositoryManager;
import org.eclipse.aether.repository.LocalArtifactRequest;
import org.eclipse.aether.repository.LocalArtifactResult;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.ArtifactRequest;
import org.eclipse.aether.resolution.ArtifactResolutionException;
import org.eclipse.aether.resolution.ArtifactResult;
import org.eclipse.aether.resolution.DependencyRequest;
import org.eclipse.aether.resolution.DependencyResolutionException;
import org.eclipse.aether.util.graph.visitor.PreorderNodeListGenerator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.Thread;
import java.nio.file.Path;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Queue;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/*
  Walk the dependency tree and the local repository to get a "package
  set". For us that means an attrset of functions that can be called
  by `callPackage` of a new attrset made by `makeScope`.

  Ideally all these would get accumulated into one giant package set
  in nixpkgs or somewhere like all-hackage-packages, but for now this
  allows users to import and contribute them easily.

  Inspired by importers in `guix`.
*/

public class Graph {
    private static Logger LOGGER = LoggerFactory.getLogger(Graph.class.getClass());

    private static DefaultModelBuilderFactory factory = new DefaultModelBuilderFactory();

    public static Map.Entry<Dependency, Res> self(Model pom) {
        List<Dependency> deps = runDependencies(pom)
            .stream()
            .map(Graph::toAether)
            .collect(Collectors.toList());

        deps.addAll(buildDependencies(pom));

        Res r = new Res(
            deps.stream().filter(distinctByKey(d -> d.getArtifact().toString())).collect(Collectors.toList()),
            new ArrayList<>()
        );

        Model m = pom.clone();

        m.setPackaging("pom");

        return new AbstractMap.SimpleImmutableEntry<Dependency, Res>(rootDependency(m), r);
    }

    public static Map<Dependency, Res> resolve(Context ctx, Model pom, boolean resolveRoots) {
        Stream<Dependency> initial = resolveRoots
            // If this is a published package, then we don't care about build dependencies at all
            ? runDependencies(pom).stream().map(Graph::toAether)
            // Otherwise we want to make sure this can do a full offline build
            : Stream.concat(runDependencies(pom).stream().map(Graph::toAether), buildDependencies(pom).stream());

        Queue<Dependency> todos = new ArrayDeque<>(initial
            .filter(distinctByKey(d -> d.getArtifact().toString()))
            .collect(Collectors.toList())
        );

        if (resolveRoots) {
            todos.add(rootDependency((pom)));
        }

        List<RemoteRepository> pomRepos = remoteRepositories(pom);

        Map<Dependency, Res> walk = new HashMap<>();

        while (!todos.isEmpty()) {
            Dependency d = todos.remove();

            LOGGER.trace("Considering dependency {}", d);

            if (walk.containsKey(d)) {
                continue;
            }

            LOGGER.trace("Walking dependency {}", d);

            List<Dependency> these = collect(ctx, d).getDependencies(true);

            List<ArtifactResult> artifacts = new ArrayList<>();

            Fetch f = fetch(ctx, d, pomRepos);

            artifacts.addAll(f.artifacts);

            these.addAll(f.discovered);

            walk.put(d, new Res(these, artifacts));

            todos.addAll(these);
        }

        return walk;
    }

    public static Dependency rootDependency(Model pom) {
        return new Dependency(
            new DefaultArtifact(
                pom.getGroupId(),
                pom.getArtifactId(),
                pom.getPackaging(),
                pom.getVersion()
            ),
            "test"
        );
    }

    public static List<RemoteRepository> remoteRepositories(Model pom) {
        return Stream.concat(
            pom.getRepositories().stream().map(Graph::toAether),
            pom.getPluginRepositories().stream().map(Graph::toAether)
        )
        .collect(Collectors.toList());
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<ArtifactResult> artifacts;
        public Res(List<Dependency> ds, List<ArtifactResult> as) {
            dependencies = ds;
            artifacts = as;
        }
    };

    public static List<Dependency> buildDependencies(Model pom) {
        List<Dependency> deps = pom
            .getBuild()
            .getPlugins()
            .stream()
            .flatMap(p -> p.getDependencies().stream())
            .map(Graph::toAether)
            .collect(Collectors.toList());

        LifecycleMapping lifecycles = PublicLifecycleMappings.getLifecycle(pom.getPackaging())
            .orElseThrow(() -> new RuntimeException("Don't know how to handle packaging type provided by POM, got: " + pom.getPackaging()));

        // This might both over or under-report dependencies but we
        // don't want to get into the business of traversing plugin
        // configurations
        lifecycles.getLifecycles().values().stream()
            .flatMap(l -> l.getLifecyclePhases().values().stream())
            .flatMap(lp -> lp.getMojos().stream())
            .map(Graph::toAether)
            .forEach(d -> deps.add(d));

        pom.getBuild().getPlugins().stream().map(Graph::toAether).forEach(d -> deps.add(d));

        pom.getReporting().getPlugins().stream().map(Graph::toAether).forEach(d -> deps.add(d));

        return deps;
    }

    public static List<org.apache.maven.model.Dependency> runDependencies(Model pom) {
        List<org.apache.maven.model.Dependency> deps = pom.getDependencies();

        List<org.apache.maven.model.Dependency> managed = Optional.ofNullable(pom.getDependencyManagement())
            .map(ds -> ds.getDependencies())
            .orElse(new ArrayList<>());

        deps.addAll(managed);

        return deps;
    }

    // FIXME(jsoo1): Naive, for now we want to be conservative
    public static List<ParentFetch> fetchParents(Context ctx, Dependency d) {
        try {
            Artifact pom = new DefaultArtifact(
                d.getArtifact().getGroupId(),
                d.getArtifact().getArtifactId(),
                "pom",
                d.getArtifact().getVersion()
            );

            ArtifactResult initial = ctx
                .repositorySystem()
                .resolveArtifact(ctx.repositorySystemSession(), new ArtifactRequest(pom, ctx.remoteRepositories(), null));

            Model next = readPOMNoResolve(ctx, initial.getLocalArtifactResult().getFile());

            List<ParentFetch> parents = new ArrayList<>();

            while (next.getParent() != null) {
                Set<RemoteRepository> repos = new HashSet<>(ctx.remoteRepositories());

                repos.addAll(remoteRepositories(next));

                ArtifactResult res = ctx
                    .repositorySystem()
                    .resolveArtifact(
                        ctx.repositorySystemSession(),
                        new ArtifactRequest(toAether(next.getParent()).getArtifact(), repos.stream().collect(Collectors.toList()), null)
                );

                next = readPOMNoResolve(ctx, res.getLocalArtifactResult().getFile());

                parents.add(new ParentFetch(next, res));
            }

            return parents;
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class ParentFetch {
        public final Model pom;
        public final ArtifactResult res;
        public ParentFetch(Model p, ArtifactResult r) {
            pom = p;
            res = r;
        }
    }

    public static PreorderNodeListGenerator collect(Context ctx, Dependency dep) {
        try {
            CollectRequest req = new CollectRequest(dep.setExclusions(exclusions), ctx.remoteRepositories());

            DependencyNode root = ctx.repositorySystem()
                .resolveDependencies(
                    ctx.repositorySystemSession(),
                    new DependencyRequest(req, null)
                )
                .getRoot();

            PreorderNodeListGenerator pnl = new PreorderNodeListGenerator();

            root.accept(pnl);

            return pnl;
        } catch (DependencyResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static final List<Exclusion> exclusions = new ArrayList<>(Arrays.asList(new Exclusion[]{
        // These are not available in central (only care about central)
        new Exclusion("xerces", "xerces-impl", "", "pom"),
        new Exclusion("xerces", "xerces-impl", "", "jar"),
        new Exclusion("xml-apis", "xml-apis", "", "pom"),
        new Exclusion("xml-apis", "xml-apis", "", "jar"),
        // We want to control the jdk ourselves, probably
        new Exclusion("jdk", "srczip", "", "pom"),
        new Exclusion("jdk", "srczip", "", "jar")
    }));

    public static Fetch fetch(Context ctx, Dependency dep, List<RemoteRepository> pomRepos) {
        List<ArtifactRequest> req = new ArrayList<>(Arrays.asList(new ArtifactRequest(dep.getArtifact(), ctx.remoteRepositories(), null)));

        Artifact a = dep.getArtifact();

        DefaultArtifact pom = new DefaultArtifact(a.getGroupId(), a.getArtifactId(), "", "pom", a.getVersion());

        Set<RemoteRepository> repos = new HashSet<>(ctx.remoteRepositories());

        List<ParentFetch> parents = fetchParents(ctx, dep);

        parents
            .stream()
            .flatMap(f -> remoteRepositories(f.pom).stream())
            .forEach(repo -> repos.add(repo));

        repos.addAll(pomRepos);

        ArtifactRequest pomReq = new ArtifactRequest(pom, repos.stream().collect(Collectors.toList()), null);

        req.add(pomReq);

        try {
            List<ArtifactResult> results = ctx
                .repositorySystem()
                .resolveArtifacts(ctx.repositorySystemSession(), req)
                .stream()
                .collect(Collectors.toList());

            parents.stream().forEach(f -> results.add(f.res));

            List<Dependency> discovered = parents
                .stream()
                .flatMap(f -> runDependencies(f.pom).stream())
                .map(Graph::toAether)
                .collect(Collectors.toList());

            return new Fetch(results, discovered);
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class Fetch {
        public final List<ArtifactResult> artifacts;
        public final List<Dependency> discovered;
        public Fetch(List<ArtifactResult> as, List<Dependency> ds) {
            artifacts = as;
            discovered = ds;
        }
    }

    public static Model readPOM(Context ctx, Path pom) throws IOException {
        RemoteRepositoryManager remoteRepositoryManager = ctx.lookup()
            .lookup(RemoteRepositoryManager.class)
            .orElseThrow(() -> new IllegalStateException("component not found"));

        ProjectModelResolver resolver = new ProjectModelResolver(
            ctx.repositorySystemSession(),
            new RequestTrace(null),
            ctx.repositorySystem(),
            remoteRepositoryManager,
            ctx.remoteRepositories(),
            ProjectBuildingRequest.RepositoryMerging.POM_DOMINANT,
            new PublicReactorModelPool()
        );

        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setPomFile(pom.toFile()).setModelResolver(resolver);

        try {
            return factory.newInstance().build(req).getEffectiveModel();
        } catch (ModelBuildingException e) {
            throw new IOException(e.getMessage(), (Throwable) e);
        }
    }

    public static Model readPOMNoResolve(Context ctx, File f) {
        RemoteRepositoryManager remoteRepositoryManager = ctx.lookup()
            .lookup(RemoteRepositoryManager.class)
            .orElseThrow(() -> new IllegalStateException("component not found"));

        ProjectModelResolver resolver = new ProjectModelResolver(
            ctx.repositorySystemSession(),
            new RequestTrace(null),
            ctx.repositorySystem(),
            remoteRepositoryManager,
            ctx.remoteRepositories(),
            ProjectBuildingRequest.RepositoryMerging.POM_DOMINANT,
            new PublicReactorModelPool()
        );

        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setTwoPhaseBuilding(true);

        req.setPomFile(f).setModelResolver(resolver);
        try {
            return factory.newInstance().build(req).getEffectiveModel();
        } catch (ModelBuildingException e) {
            throw new RuntimeException(e.getMessage(), (Throwable) e);
        }
    }

    public static Dependency toAether(Parent p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "pom",
                p.getVersion()
            ),
            "test"
        );
    }

    public static Dependency toAether(org.apache.maven.model.Dependency d) {
        return new Dependency(
            new DefaultArtifact(
                d.getGroupId(),
                d.getArtifactId(),
                d.getClassifier(),
                d.getType(),
                d.getVersion()
            ),
            d.getScope(),
            d.isOptional(),
            d.getExclusions().stream().map(Graph::toAether).collect(Collectors.toList())
        );
    }

    public static Dependency toAether(Plugin p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "jar",
                p.getVersion()
            ),
            "test"
        );
    }

    // FIXME(jsoo1): So naive, but I don't know how else to do it
    public static Dependency toAether(LifecycleMojo m) {
        String[] parts = m.getGoal().split(":");

        return new Dependency(
            new DefaultArtifact(
                parts[0],
                parts[1],
                "jar",
                parts[2]
            ),
            "provided"
        );
    }

    public static Dependency toAether(ReportPlugin p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "jar",
                p.getVersion()
            ),
            "test"
        );
    }

    public static Exclusion toAether(org.apache.maven.model.Exclusion e) {
        return new Exclusion(e.getGroupId(), e.getArtifactId(), null, null);
    }

    public static RemoteRepository toAether(org.apache.maven.model.Repository r) {
        return new RemoteRepository.Builder(r.getId(), r.getLayout(), r.getUrl()).build();
    }

    public static Optional<String> extension(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf == -1) {
            return Optional.empty(); // empty extension
        }
        return Optional.of(name.substring(lastIndexOf));
    }

    public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
        Set<Object> seen = ConcurrentHashMap.newKeySet();
        return t -> seen.add(keyExtractor.apply(t));
    }
}
