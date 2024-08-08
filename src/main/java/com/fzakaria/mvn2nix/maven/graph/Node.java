package com.fzakaria.mvn2nix.maven.graph;

import java.util.List;

import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.resolution.ArtifactResult;

public class Node {
    public final ArtifactResult artifact;
    public final List<Dependency> dependencies;
    public Node(ArtifactResult a, List<Dependency> ds) {
        artifact = a;
        dependencies = ds;
    }
}
