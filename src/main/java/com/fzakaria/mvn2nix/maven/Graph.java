package com.fzakaria.mvn2nix.maven;

import com.fzakaria.mvn2nix.maven.MaybeResolvedArtifact;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.Runtime;
import eu.maveniverse.maven.mima.context.Runtimes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuilder;
import org.apache.maven.model.building.ModelBuildingException;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.project.ProjectBuildingRequest;
import org.apache.maven.project.ProjectModelResolver;
import org.apache.maven.project.PublicReactorModelPool;
import org.apache.maven.model.io.xpp3.MavenXpp3Reader;
import org.codehaus.plexus.util.xml.pull.XmlPullParserException;
import org.eclipse.aether.RequestTrace;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.graph.Dependency;
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
        Res r = new Res(runAndBuildDependencies(pom), new ArrayList<>());
        return new AbstractMap.SimpleImmutableEntry<Dependency, Res>(rootDependency(pom), r);
    }

    public static Map<Dependency, Res> resolve(Context ctx, Model pom, boolean resolveRoots) {
        List<Dependency> initial = resolveRoots
            ? pom.getDependencies().stream().map(Graph::toAether).collect(Collectors.toList())
            : runAndBuildDependencies(pom);

        Queue<Dependency> todos = new ArrayDeque<>(initial);

        if (resolveRoots) {
            todos.add(rootDependency((pom)));
        }

        Map<Dependency, Res> walk = new HashMap<>();

        while (!todos.isEmpty()) {
            Dependency d = todos.remove();

            LOGGER.trace("Considering dependency {}", mavenCoordinates(d.getArtifact()));

            if (walk.containsKey(d)) {
                continue;
            }

            LOGGER.trace("Walking dependency {}", mavenCoordinates(d.getArtifact()));

            List<Dependency> these = collect(ctx, d).getDependencies(true);

            List<ArtifactResult> artifacts = new ArrayList<>();

            for (Fetch f: fetchTransitive(ctx, d)) {
                artifacts.add(f.artifact);

                these.addAll(f.parents);
            }

            walk.put(d, new Res(these, artifacts));

            todos.addAll(these);
        }

        return walk;
    }

    public static Dependency rootDependency(Model pom) {
        return new Dependency(new DefaultArtifact(pom.getGroupId(), pom.getArtifactId(), "jar", pom.getVersion()), "test");
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<ArtifactResult> artifacts;
        public Res(List<Dependency> ds, List<ArtifactResult> as) {
            dependencies = ds;
            artifacts = as;
        }
    };

    public static List<Dependency> runAndBuildDependencies(Model pom) {
        Stream<org.apache.maven.model.Dependency> deps_ = pom.getDependencies().stream();

        Stream<org.apache.maven.model.Dependency> pluginDeps = pom
            .getBuild()
            .getPlugins()
            .stream()
            .flatMap(p -> p.getDependencies().stream());

        return Stream.concat(deps_, pluginDeps).map(Graph::toAether).collect(Collectors.toList());
    }

    public static PreorderNodeListGenerator collect(Context ctx, Dependency dep) {
        try {
            DependencyNode root = ctx.repositorySystem()
                .resolveDependencies(
                    ctx.repositorySystemSession(),
                    new DependencyRequest(new CollectRequest(dep, ctx.remoteRepositories()), null)
                )
                .getRoot();

            PreorderNodeListGenerator pnl = new PreorderNodeListGenerator();

            root.accept(pnl);

            return pnl;
        } catch (DependencyResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Fetch> fetchTransitive(Context ctx, Dependency dep) {
        try {
            List<ArtifactRequest> req = new ArrayList<>(Arrays.asList(new ArtifactRequest(dep.getArtifact(), ctx.remoteRepositories(), null)));

            Artifact a = dep.getArtifact();

            DefaultArtifact pom = new DefaultArtifact(a.getGroupId(), a.getArtifactId(), "", "pom", a.getVersion());

            ArtifactRequest pomReq = new ArtifactRequest(pom, ctx.remoteRepositories(), null);

            req.add(pomReq);

            return ctx
                .repositorySystem()
                .resolveArtifacts(ctx.repositorySystemSession(), req)
                .stream()
                .map(a_ -> {
                    if (a_.getArtifact().getExtension().equals("pom")) {
                        return new Fetch(a_, parents(ctx, a_));
                    } else {
                        return new Fetch(a_, new ArrayList<>());
                    }
                })
                .collect(Collectors.toList());
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<ArtifactResult> fetchDirect(Context ctx, Dependency dep) {
        try {
            List<ArtifactRequest> req = new ArrayList<>(Arrays.asList(new ArtifactRequest(dep.getArtifact(), ctx.remoteRepositories(), null)));

            Artifact a = dep.getArtifact();

            DefaultArtifact pom = new DefaultArtifact(a.getGroupId(), a.getArtifactId(), "", "pom", a.getVersion());

            ArtifactRequest pomReq = new ArtifactRequest(pom, ctx.remoteRepositories(), null);

            req.add(pomReq);

            return ctx
                .repositorySystem()
                .resolveArtifacts(ctx.repositorySystemSession(), req)
                .stream()
                .collect(Collectors.toList());
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class Fetch {
        public final ArtifactResult artifact;
        public final List<Dependency> parents;
        public Fetch(ArtifactResult a, List<Dependency> ps) {
            artifact = a;
            parents = ps;
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

    public static List<Dependency> parents(Context ctx, ArtifactResult a) {
        Model m = readPOMNoResolve(ctx, a.getLocalArtifactResult().getFile());

        Optional<Dependency> p = Optional.ofNullable(m.getParent()).map(Graph::parentDependency);

        List<Dependency> res = new ArrayList<>();

        while (p.isPresent()) {
            res.add(p.get());

            for (ArtifactResult ar : fetchDirect(ctx, p.get())) {
                if (ar.getArtifact().getExtension().equals("pom")) {
                    m = readPOMNoResolve(ctx, ar.getLocalArtifactResult().getFile());

                    p = Optional.ofNullable(m.getParent()).map(Graph::parentDependency);
                }
            }
        }

        return res;
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

    public static Dependency parentDependency(Parent p) {
        return new Dependency(new DefaultArtifact(p.getGroupId(), p.getArtifactId(), "pom", p.getVersion()), "test");
    }

    public static String mavenCoordinates(Artifact a) {
        return a.getGroupId()
            + ":" + a.getArtifactId()
            + (a.getExtension() == "jar" ? "" : (":" + a.getExtension()))
            + ":" + a.getVersion()
            + Optional.ofNullable(a.getClassifier())
                .filter(Predicate.not(String::isEmpty))
                .map(s -> ":" + s)
                .orElse("");
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

    public static Exclusion toAether(org.apache.maven.model.Exclusion e) {
        return new Exclusion(e.getGroupId(), e.getArtifactId(), null, null);
    }

    public static Optional<String> extension(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf == -1) {
            return Optional.empty(); // empty extension
        }
        return Optional.of(name.substring(lastIndexOf));
    }
}
