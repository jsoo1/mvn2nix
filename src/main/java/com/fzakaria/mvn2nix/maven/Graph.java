package com.fzakaria.mvn2nix.maven;

import coursier.core.Dependency;
import coursier.core.Publication;
import coursier.util.Artifact;
import org.apache.maven.model.Model;

import java.io.IOException;
import java.io.File;
import java.nio.file.Path;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class Graph {
    public static Map<Dependency, Res> resolve(final Model m, final boolean resolveRoots) throws IOException {
        return Coursier.resolvePOM(m, resolveRoots).entrySet().stream().collect(Collectors.toMap(
            Map.Entry::getKey,
            (Map.Entry<Dependency, Coursier.Res> e) -> new Res(e.getValue()),
            (x1, x2) -> x2
        ));
    }

    public static Map.Entry<Dependency, Res> self(final Model m) {
        return new AbstractMap.SimpleImmutableEntry<>(
            Coursier.mavenToCoursier(m),
            new Res(m.getDependencies().stream().map(Coursier::mavenToCoursier).collect(Collectors.toList()))

        );
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<scala.Tuple3<Publication, Artifact, File>> artifacts;
        public Res(Coursier.Res r) {
            dependencies = r.dependencies();
            artifacts = r.artifacts();
        }
        public Res(List<Dependency> deps) {
            dependencies = deps;
            artifacts = new ArrayList<>();
        }
    }
}
