package com.fzakaria.mvn2nix.maven;

import com.fzakaria.mvn2nix.maven.MaybeResolvedArtifact;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.Runtime;
import eu.maveniverse.maven.mima.context.Runtimes;
import java.util.function.Function;
import java.util.function.Predicate;
import org.apache.maven.model.Model;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuildingException;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.project.ProjectModelResolver;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.graph.DependencyNode;
import org.eclipse.aether.graph.Exclusion;
import org.eclipse.aether.impl.RemoteRepositoryManager;
import org.eclipse.aether.resolution.ArtifactRequest;
import org.eclipse.aether.resolution.ArtifactResolutionException;
import org.eclipse.aether.resolution.ArtifactResult;
import org.eclipse.aether.resolution.DependencyRequest;
import org.eclipse.aether.resolution.DependencyResolutionException;
import org.eclipse.aether.util.graph.visitor.PreorderNodeListGenerator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.nio.file.Path;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.Thread;
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
import java.util.stream.Stream;
import java.util.stream.Collectors;

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

            List<ArtifactResult> artifacts = fetch(ctx, d);

            walk.put(d, new Res(these, artifacts));

            todos.addAll(these);
        }

        return walk;
    }

    public static Dependency rootDependency(Model pom) {
        return new Dependency(new DefaultArtifact(pom.getGroupId(), pom.getArtifactId(), "jar", pom.getVersion()), "test");
    }

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

    public static List<ArtifactResult> fetch(Context ctx, Dependency dep) {
        try {
            List<ArtifactRequest> req = new ArrayList<>(Arrays.asList(new ArtifactRequest(dep.getArtifact(), ctx.remoteRepositories(), null)));

            Artifact a = dep.getArtifact();

            if (Optional.ofNullable(a.getClassifier()).filter(Predicate.not(String::isEmpty)).isEmpty()) {
                DefaultArtifact pom = new DefaultArtifact(a.getGroupId(), a.getArtifactId(), a.getClassifier(), "pom", a.getVersion());

                ArtifactRequest pomReq = new ArtifactRequest(pom, ctx.remoteRepositories(), null);

                req.add(pomReq);
            }

            return ctx
                .repositorySystem()
                .resolveArtifacts(ctx.repositorySystemSession(), req);
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<ArtifactResult> artifacts;
        public Res(List<Dependency> ds, List<ArtifactResult> as) {
            dependencies = ds;
            artifacts = as;
        }
    };

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
}
