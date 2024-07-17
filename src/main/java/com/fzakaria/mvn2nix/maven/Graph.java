package com.fzakaria.mvn2nix.maven;

import com.fzakaria.mvn2nix.maven.MaybeResolvedArtifact;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.Runtime;
import eu.maveniverse.maven.mima.context.Runtimes;
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
    private static DefaultModelBuilderFactory factory = new DefaultModelBuilderFactory();

    private static Logger LOGGER = LoggerFactory.getLogger(Graph.class.getClass());

    public static Map<Dependency, List<Dependency>> read(Context ctx, ProjectModelResolver resolver, final Path pomfile) throws IOException {
        Model pom = readPOM(resolver, pomfile);

        return collect(ctx, pom);
    }

    public static Model readPOM(ProjectModelResolver resolver, Path pom) throws IOException {
        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setPomFile(pom.toFile()).setModelResolver(resolver);

        try {
            return factory.newInstance().build(req).getEffectiveModel();
        } catch (ModelBuildingException e) {
            throw new IOException(e.getMessage(), (Throwable) e);
        }
    }

    public static Map<Dependency, List<Dependency>> collect(Context ctx, Model pom) {
        Dependency root = new Dependency(new DefaultArtifact(pom.getId()), "test");

        Map<Dependency, List<Dependency>> walk = new HashMap<>();

        List<Dependency> deps = pom
            .getDependencies()
            .stream()
            .map(Graph::toAether)
            .collect(Collectors.toList());

        walk.put(root, deps);

        Queue<Dependency> todos = new ArrayDeque<>(deps);

        while (!todos.isEmpty()) {
            Dependency d = todos.remove();

            if (walk.containsKey(d)) {
                continue;
            }

            LOGGER.debug("Walking dependency {}", canonName(d));

            List<Dependency> these = collect(ctx, d).getDependencies(true);

            walk.put(d, these);

            todos.addAll(these);
        }

        return walk;
    }

    public static PreorderNodeListGenerator collect(Context ctx, Dependency dep) {
        try {
            CollectRequest collectRequest = new CollectRequest();

            collectRequest.setRoot(dep);

            collectRequest.setRepositories(ctx.remoteRepositories());

            DependencyRequest dependencyRequest = new DependencyRequest();

            dependencyRequest.setCollectRequest(collectRequest);

            DependencyNode root = ctx.repositorySystem()
                .resolveDependencies(ctx.repositorySystemSession(), dependencyRequest)
                .getRoot();

            PreorderNodeListGenerator pnl = new PreorderNodeListGenerator();

            root.accept(pnl);

            return pnl;
        } catch (DependencyResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static String canonName(Dependency d) {
        Artifact a = d.getArtifact();

        return Stream.of(
            a.getGroupId(),
            a.getArtifactId(),
            a.getVersion(),
            a.getExtension()
        ).collect(Collectors.joining(":"));
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
