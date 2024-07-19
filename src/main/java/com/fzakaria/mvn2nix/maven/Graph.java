package com.fzakaria.mvn2nix.maven;

import coursier.core.Dependency;
import coursier.util.Artifact;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


public class Graph {
    public static Map<Dependency, Res> resolve(final java.nio.file.Path pomfile) throws IOException {
        return Coursier.resolvePOM(pomfile).entrySet().stream().collect(Collectors.toMap(
            Map.Entry::getKey,
            (Map.Entry<Dependency, Coursier.Res> e) -> new Res(e.getValue()),
            (x1, x2) -> x2
        ));
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<scala.Tuple2<Artifact, java.util.Optional<java.io.File>>> artifacts;
        public Res(Coursier.Res r) {
            dependencies = r.dependencies();
            artifacts = r.artifacts();
        }
    }
}
