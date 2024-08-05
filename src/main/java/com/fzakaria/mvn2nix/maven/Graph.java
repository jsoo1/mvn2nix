package com.fzakaria.mvn2nix.maven;

import com.fzakaria.mvn2nix.maven.MaybeResolvedArtifact;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.Runtime;
import eu.maveniverse.maven.mima.context.Runtimes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Collections;
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
import org.apache.maven.model.DependencyManagement;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.Plugin;
import org.apache.maven.model.PluginManagement;
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

    public static Root root(Context ctx, Model pom) {
        List<Dependency> deps = runDependencies(ctx, pom)
            .stream()
            .collect(Collectors.toList());

        deps.addAll(buildDependencies(ctx, pom));

        Map<Artifact, Res> discovered = new HashMap<>();

        List<POMFetch> parents = fetchParents(ctx, rootDependency(pom));

        discovered.putAll(pomGraph(parents));

        parents.stream().findFirst().ifPresent(p -> deps.add(rootDependency(p.pom)));

        Optional.ofNullable(pom.getDependencyManagement()).ifPresent(pm -> {
            ImportFetch i = getImports(ctx, pm, remoteRepositories(pom));

            for (Dependency d : i.dependencies) {
                pom.getDependencyManagement().getDependencies().add(toMaven(d));
            }

            discovered.putAll(pomGraph(i.imports));

            i.imports.stream().findFirst().ifPresent(p -> deps.add(rootDependency(p.pom)));
        });

        Map.Entry<Artifact, List<Dependency>> node = new AbstractMap.SimpleImmutableEntry<>(rootDependency(pom).getArtifact(), deps);

        return new Root(node, discovered);
    }

    public static class Root {
        public final Map.Entry<Artifact, List<Dependency>> node;
        public final Map<Artifact, Res> discovered;
        public Root(Map.Entry<Artifact, List<Dependency>> n, Map<Artifact, Res> ds) {
            node = n;
            discovered = ds;
        }
    }

    public static Map<Artifact, Res> resolve(Context ctx, Model pom, boolean resolveRoots) {
        Stream<Dependency> initial = resolveRoots
            // If this is a published package, then we don't care about build dependencies at all
            ? runDependencies(ctx, pom).stream()
            // Otherwise we want to make sure this can do a full offline build
            : Stream.concat(runDependencies(ctx, pom).stream(), buildDependencies(ctx, pom).stream());

        Queue<Dependency> todos = new ArrayDeque<>(initial
            .filter(distinctByKey(d -> d.getArtifact().toString()))
            .collect(Collectors.toList())
        );

        if (resolveRoots) {
            todos.add(rootDependency((pom)));
        }

        List<RemoteRepository> pomRepos = remoteRepositories(pom);

        Map<Artifact, Res> walk = new HashMap<>();

        while (!todos.isEmpty()) {
            Dependency d = todos.remove();

            LOGGER.trace("Considering {}", d.getArtifact());

            if (walk.containsKey(d.getArtifact())) {
                continue;
            }

            LOGGER.info("Adding {}", d.getArtifact());

            List<Dependency> these = resolve(ctx, d).getDependencies(true);

            Fetch f = fetch(ctx, d, pomRepos);

            these.addAll(f.discovered);

            walk.put(d.getArtifact(), new Res(these, f.artifact));

            f.parents.stream().findFirst().ifPresent(p -> these.add(rootDependency(p.pom)));

            f.imports.stream().findFirst().ifPresent(i -> these.add(rootDependency(i.pom)));

            walk.putAll(pomGraph(f.parents));

            walk.putAll(pomGraph(f.imports));

            todos.addAll(these);

            LOGGER.debug("Adding todos {}", todos);
        }

        return walk;
    }

    public static Map<Artifact, Res> pomGraph(List<POMFetch> ps) {
        Map<Artifact, Res> res = new HashMap<>();

        Optional<POMFetch> parent = Optional.empty();

        List<POMFetch> ps_ = new ArrayList<>(ps);

        Collections.reverse(ps_);

        for (POMFetch p : ps_) {
            res.put(rootDependency(p.pom).getArtifact(), pomNode(p, parent));

            parent = Optional.of(p);
        }

        return res;
    }

    public static Res pomNode(POMFetch f, Optional<POMFetch> parent) {
        return new Res(
            parent.map(p -> new ArrayList<>(Arrays.asList(rootDependency(p.pom)))).orElse(new ArrayList<>()),
            f.res
        );
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
        public final ArtifactResult artifact;
        public final List<Dependency> dependencies;
        public Res(List<Dependency> ds, ArtifactResult a) {
            dependencies = ds;
            artifact = a;
        }
    };

    public static List<Dependency> buildDependencies(Context ctx, Model pom) {
        List<POMFetch> parents = fetchParents(ctx, pom);

        List<Dependency> buildDeps = new ArrayList<>();

        pom.getDependencies()
            .stream()
            .map(Graph::toAether)
            .filter(d -> isOnlyBuildScope(d.getScope()) || d.isOptional())
            .map(d -> dominatingDependency(pom, parents, d))
            .forEach(d -> buildDeps.add(d));

        pom.getBuild()
            .getPlugins()
            .stream()
            .map(p -> dominatingPluginDependency(pom, parents, p))
            .map(Graph::toAether)
            .forEach(d -> buildDeps.add(d));

        pom.getBuild()
            .getPlugins()
            .stream()
            .flatMap(p -> p.getDependencies().stream())
            .map(Graph::toAether)
            .map(d -> dominatingDependency(pom, parents, d))
            .forEach(d -> buildDeps.add(d));

        pom.getReporting()
            .getPlugins()
            .stream()
            .map(Graph::toAether)
            .forEach(d -> buildDeps.add(d));

        LifecycleMapping lifecycles = PublicLifecycleMappings.getLifecycle(pom.getPackaging())
            .orElseThrow(() -> new RuntimeException("Don't know how to handle packaging type provided by POM, got: " + pom.getPackaging()));

        // This might both over or under-report dependencies but we
        // don't want to get into the business of traversing plugin
        // configurations
        lifecycles.getLifecycles().values().stream()
            .flatMap(l -> l.getLifecyclePhases().values().stream())
            .flatMap(lp -> lp.getMojos().stream())
            .map(Graph::toAether)
            .forEach(d -> buildDeps.add(d));

        return buildDeps;
    }

    public static boolean isOnlyBuildScope(String scope) {
        return Pattern.compile("compile|test").asPredicate().test(scope);
    }

    public static List<Dependency> runDependencies(Context ctx, Model pom) {
        List<POMFetch> parents = fetchParents(ctx, pom);

        return pom.getDependencies()
            .stream()
            .map(Graph::toAether)
            .filter(d -> isRunScope(d.getScope()))
            .filter(d -> !d.isOptional())
            .map(d -> dominatingDependency(pom, parents, d))
            .collect(Collectors.toList());
    }

    public static boolean isRunScope(String scope) {
        return Pattern.compile("provided|runtime").asPredicate().test(scope);
    }

    public static List<POMFetch> fetchParents(Context ctx, Dependency d) {
        POMFetch self = fetchPOM(ctx, d);

        List<POMFetch> parents = fetchParents(ctx, self.pom);

        List<POMFetch> res = new ArrayList<>(1 + parents.size());

        res.add(self);

        res.addAll(parents);

        return res;
    }

    public static POMFetch fetchPOM(Context ctx, Dependency d) {
        Artifact pom = new DefaultArtifact(
            d.getArtifact().getGroupId(),
            d.getArtifact().getArtifactId(),
            "pom",
            d.getArtifact().getVersion()
        );

        try {
            ArtifactResult initial = ctx
                .repositorySystem()
                .resolveArtifact(ctx.repositorySystemSession(), new ArtifactRequest(pom, ctx.remoteRepositories(), null));

            Model m = readPOMNoResolve(ctx, initial.getLocalArtifactResult().getFile());

            return new POMFetch(m, initial);
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    // FIXME(jsoo1): Naive, for now we want to be conservative
    public static List<POMFetch> fetchParents(Context ctx, Model m) {
        try {
            Model next = m;

            List<POMFetch> parents = new ArrayList<>();

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

                parents.add(new POMFetch(next, res));
            }

            return parents;
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class POMFetch {
        public final Model pom;
        public final ArtifactResult res;
        public POMFetch(Model p, ArtifactResult r) {
            pom = p;
            res = r;
        }
    }

    public static PreorderNodeListGenerator resolve(Context ctx, Dependency dep) {
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
        // FIXME(jsoo1): Why?
        new Exclusion("org.jboss.ejb3", "jboss-ejb3-api", "", "jar"),
        new Exclusion("org.jboss.ejb3", "jboss-ejb3-api", "", "pom"),
        // We want to control the jdk ourselves, probably
        new Exclusion("jdk", "srczip", "", "pom"),
        new Exclusion("jdk", "srczip", "", "jar")
    }));

    public static Fetch fetch(Context ctx, Dependency dep, List<RemoteRepository> pomRepos) {
        Set<RemoteRepository> repos = new HashSet<>(ctx.remoteRepositories());

        List<Model> parents = new ArrayList<>();

        List<POMFetch> imports = new ArrayList<>();

        List<POMFetch> parentResults = fetchParents(ctx, dep);

        for (POMFetch f : parentResults) {
            if (f.pom.getDependencyManagement() != null) {
                ImportFetch i = getImports(ctx, f.pom.getDependencyManagement(), pomRepos);

                imports.addAll(i.imports);

                for (Dependency d : i.dependencies) {
                    f.pom.getDependencyManagement().getDependencies().add(toMaven(d));
                }

                parents.add(f.pom);
            }
        }

        parents
            .stream()
            .flatMap(m -> remoteRepositories(m).stream())
            .forEach(repo -> repos.add(repo));

        repos.addAll(pomRepos);

        try {
            ArtifactResult artifact = ctx
                .repositorySystem()
                .resolveArtifact(
                    ctx.repositorySystemSession(),
                    new ArtifactRequest(dep.getArtifact(), new ArrayList<>(repos), null)
                );

            List<Dependency> discovered = parents
                .stream()
                .flatMap(m -> runDependencies(ctx, m).stream())
                .collect(Collectors.toList());

            return new Fetch(artifact, discovered, parentResults, imports);
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class Fetch {
        public final ArtifactResult artifact;
        public final List<Dependency> discovered;
        public final List<POMFetch> parents;
        public final List<POMFetch> imports;
        public Fetch(ArtifactResult a, List<Dependency> ds, List<POMFetch> ps, List<POMFetch> is) {
            artifact = a;
            discovered = ds;
            parents = ps;
            imports = is;
        }
    }

    public static Dependency dominatingDependency(Model pom, List<POMFetch> parents, Dependency d) {
        Optional<Dependency> fromPOM = Optional.ofNullable(pom.getDependencyManagement())
            .flatMap(dm -> managedBy(dm, d));

        return (fromPOM.isPresent()
                ? fromPOM
                : parents.stream()
                    .flatMap(f -> Optional.ofNullable(f.pom.getDependencyManagement()).stream())
                    .flatMap(dm -> managedBy(dm, d).stream())
                    .filter(d_ -> Optional.ofNullable(d_.getArtifact().getVersion()).filter(Predicate.not(String::isEmpty)).isPresent())
                    .findFirst())
            .orElse(d);
    }

    public static Optional<Dependency> managedBy(DependencyManagement dm, Dependency d) {
        return dm.getDependencies().stream().filter(md -> managedBy(md, d)).findFirst().map(Graph::toAether);
    }

    public static boolean managedBy(org.apache.maven.model.Dependency managing, Dependency d) {
        Artifact a = d.getArtifact();

        return managing.getGroupId().equals(a.getGroupId())
            && managing.getArtifactId().equals(a.getArtifactId());
    }

    public static Plugin dominatingPluginDependency(Model pom, List<POMFetch> parents, Plugin p) {
        Optional<Plugin> fromPOM = Optional.ofNullable(pom.getBuild().getPluginManagement())
            .flatMap((PluginManagement pm) -> managedBy(pm, p));

        return (fromPOM.isPresent()
            ? fromPOM
            : parents.stream()
                .flatMap(f -> managedBy(f.pom.getBuild().getPluginManagement(), p).stream())
                .filter(d_ -> Optional.ofNullable(d_.getVersion()).filter(Predicate.not(String::isEmpty)).isPresent())
                .findFirst())
            .orElse(p);
    }

    public static Optional<Plugin> managedBy(PluginManagement pm, Plugin p) {
        return pm.getPlugins().stream().filter(mp -> managedBy(mp, p)).findFirst();
    }

    public static boolean managedBy(Plugin managing, Plugin p) {
        return managing.getGroupId().equals(p.getGroupId())
            && managing.getArtifactId().equals(p.getArtifactId());
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

    public static ImportFetch getImports(Context ctx, DependencyManagement dm, List<RemoteRepository> repos) {
        Set<RemoteRepository> initRepos = new HashSet<>(ctx.remoteRepositories());

        initRepos.addAll(repos);

        List<ArtifactRequest> reqs = dm.getDependencies()
            .stream()
            .filter(d -> Optional.ofNullable(d.getScope()).map(s -> s.equals("import")).orElse(false)
                    && Optional.ofNullable(d.getType()).map(t -> t.equals("pom")).orElse(false))
            .map(d -> new ArtifactRequest(toAether(d).getArtifact(), initRepos.stream().collect(Collectors.toList()), null))
            .collect(Collectors.toList());

        try {
            List<ArtifactResult> initial = ctx
                .repositorySystem()
                .resolveArtifacts(ctx.repositorySystemSession(), reqs);

            List<Dependency> dependencies = new ArrayList<>();

            List<POMFetch> imports = new ArrayList<>();

            for (ArtifactResult ar : initial) {
                Model m = readPOMNoResolve(ctx, ar.getLocalArtifactResult().getFile());

                imports.add(new POMFetch(m, ar));

                if (m.getDependencyManagement() != null) {
                    Set<RemoteRepository> rs = new HashSet<>(repos);

                    rs.addAll(ctx.remoteRepositories());

                    rs.addAll(remoteRepositories(m));

                    ImportFetch f = getImports(ctx, m.getDependencyManagement(), rs.stream().collect(Collectors.toList()));

                    dependencies.addAll(f.dependencies);

                    imports.addAll(f.imports);
                }
            }

            return new ImportFetch(dependencies, imports);
        } catch (ArtifactResolutionException e ) {
            throw new RuntimeException(e);
        }
    }

    public static class ImportFetch {
        public final List<Dependency> dependencies;
        public final List<POMFetch> imports;
        public ImportFetch(List<Dependency> ds, List<POMFetch> is) {
            dependencies = ds;
            imports = is;
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

    public static org.apache.maven.model.Dependency toMaven(Dependency d) {
        Artifact a = d.getArtifact();

        org.apache.maven.model.Dependency res = new org.apache.maven.model.Dependency();

        res.setGroupId(a.getGroupId());

        res.setArtifactId(a.getArtifactId());

        res.setClassifier(a.getClassifier());

        res.setType(a.getExtension());

        res.setVersion(a.getVersion());

        res.setScope(d.getScope());

        res.setOptional(d.getOptional());

        res.setExclusions(d.getExclusions().stream().map(Graph::toMaven).collect(Collectors.toList()));

        return res;
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

    public static org.apache.maven.model.Exclusion toMaven(Exclusion e) {
        org.apache.maven.model.Exclusion ex = new org.apache.maven.model.Exclusion();

        ex.setGroupId(e.getGroupId());

        ex.setArtifactId(e.getArtifactId());

        return ex;
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
