package com.fzakaria.mvn2nix.maven;

import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import eu.maveniverse.maven.mima.context.Context;
import org.apache.maven.model.Model;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.repository.RemoteRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fzakaria.mvn2nix.maven.graph.*;

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

    // FIXME(jsoo1): No parents handled
    public static Map.Entry<Artifact, List<Dependency>> root(POM pom) {
        List<Dependency> dependencies = POM.runDependencies(pom)
            .stream()
            .collect(Collectors.toList());

        dependencies.addAll(POM.buildDependencies(pom));

        return new AbstractMap.SimpleImmutableEntry<>(Aether.of(pom.model).getArtifact(), uniq(dependencies));
    }

    public static Map<Artifact, Node> resolve(Context ctx, POM pom, List<Dependency> initial) {
        Queue<Dependency> todos = new ArrayDeque<>(
            initial
                .stream()
                .filter(distinctByKey(d -> d.getArtifact().toString()))
                .collect(Collectors.toList())
        );

        Map<Artifact, Node> walk = new HashMap<>(pom.walk);

        while (!todos.isEmpty()) {
            Dependency d = todos.remove();

            LOGGER.trace("Considering {}", d.getArtifact());

            if (walk.containsKey(d.getArtifact())) {
                continue;
            }

            LOGGER.info("Adding {}", d.getArtifact());

            Jar jar = Jar.fetch(ctx, POM.remoteRepositories(pom.model), d);

            walk.putAll(jar.walk);

            walk.put(d.getArtifact(), jar.node);

            LOGGER.debug("Adding todos {}", jar.node.dependencies);

            todos.addAll(jar.node.dependencies);
        }

        return walk;
    }

    public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
        Set<Object> seen = ConcurrentHashMap.newKeySet();
        return t -> seen.add(keyExtractor.apply(t));
    }

    public static List<Dependency> uniq(List<Dependency> ds) {
        return ds.stream()
            // .filter(a_ -> !a.toString().equals(a_.getArtifact().toString()))
            .filter(distinctByKey(d_ -> d_.getArtifact().toString()))
            .collect(Collectors.toList());
    }
}
