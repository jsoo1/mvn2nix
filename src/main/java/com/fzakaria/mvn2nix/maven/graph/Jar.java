package com.fzakaria.mvn2nix.maven.graph;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import eu.maveniverse.maven.mima.context.Context;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.ArtifactRequest;
import org.eclipse.aether.resolution.ArtifactResolutionException;
import org.eclipse.aether.resolution.ArtifactResult;

public class Jar {
    public final Node node;
    public final Map<Artifact, Node> walk;
    public Jar(Node n, Map<Artifact, Node> w) {
        node = n;
        walk = w;
    }

    public static Jar fetch(Context ctx, List<RemoteRepository> pomRepos, Dependency dep) {
        List<Dependency> dependencies = Dep.resolve(ctx, pomRepos, dep).getDependencies(true);

        Set<RemoteRepository> repos = new HashSet<>(ctx.remoteRepositories());

        repos.addAll(pomRepos);

        try {
            ArtifactResult res = ctx
                .repositorySystem()
                .resolveArtifact(
                    ctx.repositorySystemSession(),
                    new ArtifactRequest(dep.getArtifact(), new ArrayList<>(repos), null)
                );

            POM self = POM.fetch(ctx, dep);

            dependencies.add(Aether.of(self));

            self.parent.ifPresent(x -> dependencies.add(Aether.of(x.model)));

            return new Jar(new Node(res, dependencies), self.walk);
        } catch (ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }
}
