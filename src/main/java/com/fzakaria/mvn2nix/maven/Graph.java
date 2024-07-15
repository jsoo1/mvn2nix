package com.fzakaria.mvn2nix.maven;

import org.apache.maven.model.Dependency;
import org.apache.maven.model.Model;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.model.building.ModelProblemCollector;
import org.apache.maven.model.interpolation.DefaultModelVersionProcessor;
import org.apache.maven.model.interpolation.StringSearchModelInterpolator;
import org.apache.maven.model.io.DefaultModelReader;
import org.apache.maven.model.path.DefaultUrlNormalizer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.io.FileNotFoundException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Queue;

public class Graph {
    private static final Logger LOGGER = LoggerFactory.getLogger(Graph.class);

    // Major workarounds for maven being an impenetrable interface
    public static StringSearchModelInterpolator interpolator = new StringSearchModelInterpolator();

    static {
        interpolator
            .setVersionPropertiesProcessor(new DefaultModelVersionProcessor())
            .setUrlNormalizer(new DefaultUrlNormalizer());
    }

    public static Map<String, List<Dependency>> read(File localRepository, final File pomfile) throws FileNotFoundException, IOException {
        Model pom = readPOMFile(pomfile);

        Map<String, List<Dependency>> attrs = new HashMap<>();

        List<Dependency> deps = pom.getDependencies();

        attrs.put(Graph.topKey(pom), deps);

        walkDependencies(localRepository, attrs, deps);

        return attrs;
    }

    public static Model readPOM(File indir, Dependency dep) throws FileNotFoundException, IOException {
        File file = indir.toPath().resolve(layoutPOM(dep)).toFile();

        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }

        return readPOMFile(file);
    }

    public static Model readPOMFile(File pom) throws IOException {
        DefaultModelReader reader = new DefaultModelReader();

        Model raw = reader.read(pom, null);

        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setPomFile(pom);

        final List<java.lang.Exception> probs = new ArrayList();

        ModelProblemCollector justThrow = new ModelProblemCollector() {
            public void add(org.apache.maven.model.building.ModelProblemCollectorRequest r) {
                probs.add(r.getException());
            }
        };

        Model fixed = interpolator.interpolateModel(raw, null, req, justThrow);

        if (!probs.isEmpty()) {
            throw new IOException(probs.get(0).getMessage(), (Throwable) probs.get(0));
        }

        return fixed;
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

            Model pom = readPOM(indir, todo);

            List<Dependency> these = pom.getDependencies();

            walk.put(cn, these);

            todos.addAll(these);
        }
    }

    public static String topKey(Model pom) {
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
