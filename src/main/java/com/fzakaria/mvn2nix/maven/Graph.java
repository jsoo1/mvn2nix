package com.fzakaria.mvn2nix.maven;

import org.apache.maven.model.Dependency;
import org.apache.maven.project.MavenProject;
import org.apache.maven.project.ProjectBuilder;
import org.apache.maven.project.DefaultProjectBuildingRequest;
import org.apache.maven.project.ProjectBuildingException;
import org.codehaus.plexus.DefaultPlexusContainer;
import org.codehaus.plexus.PlexusContainer;
import org.codehaus.plexus.PlexusContainerException;
import org.codehaus.plexus.component.repository.exception.ComponentLookupException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.io.FileNotFoundException;
import java.lang.Thread;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Queue;

public class Graph {
    private static final Logger LOGGER = LoggerFactory.getLogger(Graph.class);

    public static final PlexusContainer container;

    static {
        try {
          container = new DefaultPlexusContainer();
        } catch (PlexusContainerException e) {
            throw new UncheckedIOException(new IOException(e.getMessage(), (Throwable) e));
        }
    }

    public static Map<String, List<Dependency>> read(File localRepository, final File pomfile) throws FileNotFoundException, IOException {
        MavenProject pom = readPOMFile(pomfile);

        Map<String, List<Dependency>> attrs = new HashMap<>();

        List<Dependency> deps = pom.getDependencies();

        attrs.put(Graph.topKey(pom), deps);

        walkDependencies(localRepository, attrs, deps);

        return attrs;
    }

    public static MavenProject readPOM(File indir, Dependency dep) throws FileNotFoundException, IOException {
        File file = indir.toPath().resolve(layoutPOM(dep)).toFile();

        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }

        return readPOMFile(file);
    }

    public static MavenProject readPOMFile(File pom) throws IOException {
        try {
            ProjectBuilder projectBuilder = container.lookup(ProjectBuilder.class);

            DefaultProjectBuildingRequest req = new DefaultProjectBuildingRequest();

            return projectBuilder.build(pom, req).getProject();
        } catch (ProjectBuildingException e) {
            throw new IOException(e.getMessage(), (Throwable) e);
        } catch (ComponentLookupException e) {
            throw new IOException(e.getMessage(), (Throwable) e);
        }
    }

    public static void walkDependencies(File indir, Map<String, List<Dependency>> walk, final List<Dependency> deps) throws FileNotFoundException, IOException {
        Queue<Dependency> todos = new ArrayDeque(deps);

        while (!todos.isEmpty()) {
            Dependency todo = todos.remove();

            String cn = canonicalName(todo);

            if (walk.containsKey(cn)) {
                LOGGER.debug("Skipping {}", cn);

                continue;
            }

            LOGGER.info("Walking POM for {}", cn);

            MavenProject pom = readPOM(indir, todo);

            List<Dependency> these = pom.getDependencies();

            walk.put(cn, these);

            todos.addAll(these);
        }
    }

    public static String topKey(MavenProject pom) {
        return Artifact.builder()
            .setGroup(Optional.ofNullable(pom.getGroupId()).orElse(""))
            .setName(Optional.ofNullable(pom.getArtifactId()).orElse(""))
            .setVersion(Optional.ofNullable(pom.getVersion()).orElse(""))
            .build()
            .getCanonicalName();
    }
    public static String layoutPOM(Dependency dep) {
        return Artifact.builder()
            .setGroup(Optional.ofNullable(dep.getGroupId()).orElse(""))
            .setName(Optional.ofNullable(dep.getArtifactId()).orElse(""))
            .setClassifier(Optional.ofNullable(dep.getClassifier()).orElse(""))
            .setVersion(Optional.ofNullable(dep.getVersion()).orElse(""))
            .setExtension("pom")
            .build()
            .getLayout();
    }
    public static String canonicalName(Dependency dep) {
        return Artifact.builder()
            .setGroup(Optional.ofNullable(dep.getGroupId()).orElse(""))
            .setName(Optional.ofNullable(dep.getArtifactId()).orElse(""))
            .setClassifier(Optional.ofNullable(dep.getClassifier()).orElse(""))
            .setVersion(Optional.ofNullable(dep.getVersion()).orElse(""))
            .setExtension(Optional.ofNullable(dep.getType()).orElse(""))
            .build()
            .getLayout();
    }
}
