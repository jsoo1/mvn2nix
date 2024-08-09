package com.fzakaria.mvn2nix.maven.graph;

import java.util.stream.Collectors;

import org.apache.maven.lifecycle.mapping.LifecycleMojo;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.Plugin;
import org.apache.maven.model.ReportPlugin;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.graph.Exclusion;
import org.eclipse.aether.repository.RemoteRepository;

public class Aether {
    public static Dependency of(POM pom) {
        return new Dependency(
            new DefaultArtifact(
                pom.model.getGroupId(),
                pom.model.getArtifactId(),
                "pom",
                pom.model.getVersion()
            ),
            "test"
        );
    }

    public static Dependency of(Parent p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "pom",
                p.getVersion()
            ),
            "test"
        );
    }

    public static Dependency of(org.apache.maven.model.Dependency d) {
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
            d.getExclusions().stream().map(Aether::of).collect(Collectors.toList())
        );
    }

    public static Dependency of(Model pom) {
        return new Dependency(
            new DefaultArtifact(
                pom.getGroupId(),
                pom.getArtifactId(),
                packagingExtension(pom.getPackaging()),
                pom.getVersion()
            ),
            "test"
        );
    }

    public static Dependency of(Plugin p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "jar",
                p.getVersion()
            ),
            "test"
        );
    }

    // FIXME(jsoo1): So naive, but I don't know how else to do it
    public static Dependency of(LifecycleMojo m) {
        String[] parts = m.getGoal().split(":");

        return new Dependency(
            new DefaultArtifact(
                parts[0],
                parts[1],
                "jar",
                parts[2]
            ),
            "provided"
        );
    }

    public static Dependency of(ReportPlugin p) {
        return new Dependency(
            new DefaultArtifact(
                p.getGroupId(),
                p.getArtifactId(),
                "jar",
                p.getVersion()
            ),
            "test"
        );
    }

    public static Exclusion of(org.apache.maven.model.Exclusion e) {
        return new Exclusion(e.getGroupId(), e.getArtifactId(), null, null);
    }

    public static RemoteRepository of(org.apache.maven.model.Repository r) {
        return new RemoteRepository.Builder(r.getId(), r.getLayout(), r.getUrl()).build();
    }

    // Some common packaging->artifact extension mappings
    public static String packagingExtension(String packaging) {
        switch (packaging) {
        case "bundle": return "jar";
        case "maven-plugin": return "jar";
        case "eclipse-plugin": return "jar";
        default: return packaging;
        }
    }

    public static org.apache.maven.model.Exclusion toMaven(Exclusion e) {
        org.apache.maven.model.Exclusion ex = new org.apache.maven.model.Exclusion();

        ex.setGroupId(e.getGroupId());

        ex.setArtifactId(e.getArtifactId());

        return ex;
    }

    public static org.apache.maven.model.Dependency toMaven(Dependency d) {
        Artifact a = d.getArtifact();

        org.apache.maven.model.Dependency res = new org.apache.maven.model.Dependency();

        res.setGroupId(a.getGroupId());

        res.setArtifactId(a.getArtifactId());

        res.setClassifier(a.getClassifier());

        res.setType(a.getExtension());

        res.setVersion(a.getVersion());

        res.setScope(d.getScope());

        res.setOptional(d.getOptional());

        res.setExclusions(d.getExclusions().stream().map(Aether::toMaven).collect(Collectors.toList()));

        return res;
    }
}
