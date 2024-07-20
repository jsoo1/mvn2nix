package com.fzakaria.mvn2nix.maven;

import coursier.core.Dependency;
import coursier.core.Publication;
import coursier.util.Artifact;
import org.apache.maven.model.Model;

import java.io.IOException;
import java.io.File;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

public class Graph {
    public static Map<Dependency, Res> resolve(final Model m) throws IOException {
        return Coursier.resolvePOM(m).entrySet().stream().collect(Collectors.toMap(
            Map.Entry::getKey,
            (Map.Entry<Dependency, Coursier.Res> e) -> new Res(e.getValue()),
            (x1, x2) -> x2
        ));
    }

    public static class Res {
        public final List<Dependency> dependencies;
        public final List<scala.Tuple3<Publication, Artifact, Optional<File>>> artifacts;
        public Res(Coursier.Res r) {
            dependencies = r.dependencies();
            artifacts = r.artifacts();
        }
    }
}
