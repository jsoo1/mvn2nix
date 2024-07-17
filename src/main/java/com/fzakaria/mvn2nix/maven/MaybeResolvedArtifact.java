package com.fzakaria.mvn2nix.maven;

import org.eclipse.aether.artifact.Artifact;

public abstract class MaybeResolvedArtifact {
    public class UnresolvedArtifact extends MaybeResolvedArtifact {
        public final Artifact artifact;

        public UnresolvedArtifact(final Artifact a) {
            artifact = a;
        }

    }

    public class ResolvedArtifact extends MaybeResolvedArtifact {
        public final String hash;
        public final Artifact artifact;

        public ResolvedArtifact(final String h, final Artifact a) {
            hash = h;
            artifact = a;
        }
    }
}
