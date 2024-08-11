package com.fzakaria.mvn2nix.maven.graph;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import eu.maveniverse.maven.mima.context.Context;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.maven.lifecycle.mapping.LifecycleMapping;
import org.apache.maven.lifecycle.providers.packaging.DynamicLifecycleMappings;
import org.apache.maven.lifecycle.providers.packaging.PlexusLifecycleMappings;
import org.apache.maven.model.DependencyManagement;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuildingException;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.project.ProjectModelResolver;
import org.apache.maven.project.PublicReactorModelPool;
import org.apache.maven.project.ProjectBuildingRequest;
import org.eclipse.aether.RequestTrace;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.impl.RemoteRepositoryManager;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.ArtifactRequest;
import org.eclipse.aether.resolution.ArtifactResolutionException;
import org.eclipse.aether.resolution.ArtifactResult;

/*
  The most complex bit of work we do since we really want a
  ProjectBuilder but we can't have nice things.

  We replicate maven's imports, and parents logic here.

  The dependency graph of a pom should look like this:

  Each parent recursively looks the same and each import looks the
  same

  com.example:self:pom:0.2.0
  |- net.example:test-api:pom:1.0.0
  |  `- net.example:parent:pom:10
  `- com.example:artifact:pom:0.0.1
     |- import<0>
     |- ...
     `- import<m>
 */

public class POM {
    public final Model model;
    public final Map<Artifact, Node> walk;
    public final Optional<POM> parent;
    public POM(Model m, Map<Artifact, Node> w, Optional<POM> p) {
        model = m;
        walk = w;
        parent = p;
    }

    public static DefaultModelBuilderFactory factory = new DefaultModelBuilderFactory();

    public static enum Where { LOCAL, REMOTE };

    public static POM readFile(Context ctx, Path pom) {
        RemoteRepositoryManager remoteRepositoryManager = ctx.lookup()
            .lookup(RemoteRepositoryManager.class)
            .orElseThrow(() -> new IllegalStateException("component not found"));

        ProjectModelResolver resolver = new ProjectModelResolver(
            ctx.repositorySystemSession(),
            new RequestTrace(null),
            ctx.repositorySystem(),
            remoteRepositoryManager,
            ctx.remoteRepositories(),
            ProjectBuildingRequest.RepositoryMerging.POM_DOMINANT,
            new PublicReactorModelPool()
        );

        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setPomFile(pom.toFile()).setModelResolver(resolver);

        try {
            Model m = factory.newInstance().build(req).getEffectiveModel();

            Read r = read(ctx, ctx.remoteRepositories(), m, Where.LOCAL);

            ArtifactResult self = new ArtifactResult(new ArtifactRequest(artifact(m), new ArrayList<>(), null));

            Map<Artifact, Node> walk = new HashMap<>(r.walk);

            walk.put(artifact(m), new Node(self, r.dependencies));

            return new POM(m, walk, r.parent);
        } catch (ModelBuildingException e) {
            throw new RuntimeException(e);
        }
    }

    public static Artifact artifact(Model m) {
        return new DefaultArtifact(m.getGroupId(), m.getArtifactId(), "pom", m.getVersion());
    }

    public static Artifact artifact(Dependency d) {
        return new DefaultArtifact(
            d.getArtifact().getGroupId(),
            d.getArtifact().getArtifactId(),
            "pom",
            d.getArtifact().getVersion()
        );
    }

    public static POM fetch(Context ctx, Dependency d) {
        try {
            ArtifactResult res = ctx
                .repositorySystem()
                .resolveArtifact(ctx.repositorySystemSession(), new ArtifactRequest(artifact(d), ctx.remoteRepositories(), null));

            Model m = readNoResolve(ctx, res.getLocalArtifactResult().getFile());

            Read r = read(ctx, ctx.remoteRepositories(), m, Where.REMOTE);

            Map<Artifact, Node> walk = new HashMap<>(r.walk);

            walk.put(res.getArtifact(), new Node(res, r.dependencies));

            return new POM(r.model, walk, r.parent);
        } catch (ModelBuildingException | ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static POM fetch(Context ctx, List<RemoteRepository> remoteRepos, Parent p) {
        try {
            Set<RemoteRepository> repos = new HashSet<>(remoteRepos);

            repos.addAll(ctx.remoteRepositories());

            ArtifactResult res = ctx
                .repositorySystem()
                .resolveArtifact(
                    ctx.repositorySystemSession(),
                    new ArtifactRequest(Aether.of(p).getArtifact(), repos.stream().collect(Collectors.toList()), null)
                );

            Model m = readNoResolve(ctx, res.getLocalArtifactResult().getFile());

            repos.addAll(m.getRepositories().stream().map(Aether::of).collect(Collectors.toList()));

            Read r = POM.read(ctx, repos.stream().collect(Collectors.toList()), m, Where.REMOTE);

            Map<Artifact, Node> walk = new HashMap<>(r.walk);

            walk.put(res.getArtifact(), new Node(res, r.dependencies));

            return new POM(r.model, walk, r.parent);
        } catch (ModelBuildingException | ArtifactResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<RemoteRepository> remoteRepositories(Model pom) {
        return Stream.concat(
            pom.getRepositories().stream().map(Aether::of),
            pom.getPluginRepositories().stream().map(Aether::of)
        )
        .collect(Collectors.toList());
    }

    public static List<Dependency> runDependencies(POM pom) {
        return pom.model.getDependencies()
            .stream()
            .map(Aether::of)
            .filter(d -> Dep.isRunScope(d.getScope()) && !d.isOptional())
            .map(d -> Dep.dominatingDependency(pom, d))
            .filter(d -> !d.isOptional() && !Dep.isSystemScope(d.getScope()))
            .collect(Collectors.toList());
    }

    public static List<Dependency> buildDependencies(Path mavenHome, Model superPOM, POM pom) {
        List<Dependency> buildDeps = new ArrayList<>();

        Optional.ofNullable(superPOM.getBuild())
            .flatMap(b -> Optional.ofNullable(b.getPluginManagement()))
            .flatMap(pm -> Optional.ofNullable(pm.getPlugins()))
            .stream()
            .flatMap(ps -> ps.stream())
            .forEach(p -> buildDeps.add(Aether.of(p)));

        pom.model.getDependencies()
            .stream()
            .map(Aether::of)
            .filter(d -> Dep.isOnlyBuildScope(d.getScope()) || d.isOptional())
            .map(d -> Dep.dominatingDependency(pom, d))
            .forEach(d -> buildDeps.add(d));

        pom.model.getBuild()
            .getPlugins()
            .stream()
            .map(p -> Dep.dominatingPluginDependency(pom, p))
            .map(Aether::of)
            .forEach(d -> buildDeps.add(d));

        pom.model.getBuild()
            .getPlugins()
            .stream()
            .flatMap(p -> p.getDependencies().stream())
            .map(Aether::of)
            .map(d -> Dep.dominatingDependency(pom, d))
            .forEach(d -> buildDeps.add(d));

        pom.model.getReporting()
            .getPlugins()
            .stream()
            .map(Aether::of)
            .forEach(d -> buildDeps.add(d));

        LifecycleMapping lifecycles = getLifecycleMapping(mavenHome, pom.model)
            .orElseThrow(() -> new RuntimeException(
                "Don't know how to handle packaging, got: " + pom.model.getPackaging()
            ));

        // This might both over or under-report dependencies but we
        // don't want to get into the business of traversing plugin
        // configurations
        lifecycles.getLifecycles().values().stream()
            .flatMap(l -> l.getLifecyclePhases().values().stream())
            .flatMap(lp -> lp.getMojos().stream())
            .map(Aether::of)
            .forEach(d -> buildDeps.add(d));

        return buildDeps.stream().filter(d -> !Dep.isSystemScope(d.getScope())).collect(Collectors.toList());
    }

    // Get the super pom from $MAVEN_HOME (or $M2_HOME as it might be)
    public static Model getSuper(Context ctx, Path mavenHome, String modelVersion) {
        Optional<Path> tmpPom = Optional.empty();
        try {
            tmpPom = Optional.of(Files.createTempFile("", "-super-pom-" + modelVersion + ".xml", new java.nio.file.attribute.FileAttribute[]{}));

            File mavenModelBuilder = mavenHome.resolve("lib").toFile().listFiles(
                (d, n) -> Pattern.compile("maven-model-builder-[0-9.]+.jar").asPredicate().test(n)
            )[0];

            JarFile jar = new JarFile(mavenModelBuilder);

            jar.getInputStream(jar.getJarEntry("org/apache/maven/model/pom-" + modelVersion + ".xml"))
                .transferTo(new FileOutputStream(tmpPom.get().toFile()));

            Model m;

            try {
                m = readNoResolve(ctx, tmpPom.get().toFile());
            } catch (ModelBuildingException e) {
                m = e.getModel();
            }

            Optional.ofNullable(m.getBuild())
                .flatMap(b -> Optional.ofNullable(b.getPluginManagement()))
                .flatMap(pm -> Optional.ofNullable(pm.getPlugins()))
                .stream()
                .flatMap(ps -> ps.stream())
                .forEach(p -> {
                    if (p.getGroupId() == null) {
                        p.setGroupId("org.apache.maven.plugins");
                    }
                });

            return m;
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (tmpPom.isPresent()) Files.delete(tmpPom.get());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static Optional<LifecycleMapping> getLifecycleMapping(Path mavenHome, Model m) {
        try {
            File mavenCore = mavenHome.resolve("lib").toFile().listFiles(
                (d, n) -> Pattern.compile("maven-core-[0-9.]+.jar").asPredicate().test(n)
            )[0];

            try {
                // Post maven 4
                ClassLoader cl = new URLClassLoader(
                    new URL[]{mavenCore.toPath().toUri().toURL()},
                    POM.class.getClassLoader().getParent()
                );

                return DynamicLifecycleMappings.getLifecycle(cl, m.getPackaging());
            } catch (ClassNotFoundException e) {
                // Pre maven 4
                JarFile jar = new JarFile(mavenCore);

                PlexusLifecycleMappings plex = PlexusLifecycleMappings.read(
                    new InputStreamReader(new BufferedInputStream(
                        jar.getInputStream(jar.getJarEntry("META-INF/plexus/default-bindings.xml"))
                    ))
                );

                return Optional.ofNullable(plex.mappings.get(m.getPackaging())).map(x -> x.get());
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static Model readNoResolve(Context ctx, File f) throws ModelBuildingException {
        RemoteRepositoryManager remoteRepositoryManager = ctx.lookup()
            .lookup(RemoteRepositoryManager.class)
            .orElseThrow(() -> new IllegalStateException("component not found"));

        ProjectModelResolver resolver = new ProjectModelResolver(
            ctx.repositorySystemSession(),
            new RequestTrace(null),
            ctx.repositorySystem(),
            remoteRepositoryManager,
            ctx.remoteRepositories(),
            ProjectBuildingRequest.RepositoryMerging.POM_DOMINANT,
            new PublicReactorModelPool()
        );

        ModelBuildingRequest req = new DefaultModelBuildingRequest();

        req.setTwoPhaseBuilding(true);

        req.setPomFile(f).setModelResolver(resolver);
        return factory.newInstance().build(req).getEffectiveModel();
    }

    private static Read read(Context ctx, List<RemoteRepository> repos, Model m, Where where) {
        Map<Artifact, Node> walk = new HashMap<>();

        List<Dependency> dependencies = new ArrayList<>();

        Model model = m.clone();

        Optional.ofNullable(m.getDependencyManagement()).ifPresent(dm -> {
            Imports imports = Imports.fetch(ctx, repos.stream().collect(Collectors.toList()), dm);

            model.setDependencyManagement(imports.dependencyManagement);

            imports.poms.forEach(pom -> {
                dependencies.add(Aether.of(pom));

                walk.putAll(pom.walk);
            });
        });

        Optional<POM> parent = Optional.ofNullable(m.getParent()).map(x -> {
            switch (where) {
            case LOCAL:
                Optional<File> relPath = Optional.ofNullable(x.getRelativePath())
                    .map(File::new);

                if (relPath.map(f -> f.exists()).orElse(false)) {
                    POM p = readFile(ctx, relPath.get().toPath());

                    // We never want to make binary packages for locals
                    // FIXME(jsoo1): Actually this is probably not true,
                    // maybe we want to instead register it with the local
                    // repository manager
                    p.walk.remove(artifact(p.model));

                    return p;
                } else {
                    return fetch(ctx, ctx.remoteRepositories(), x);
                }
            case REMOTE:
                return fetch(ctx, ctx.remoteRepositories(), x);
            default:
                throw new RuntimeException("Unmatched locale for pom: " + where.toString());
            }
        });

        parent.ifPresent(p -> {
            dependencies.add(Aether.of(p));

            walk.putAll(p.walk);
        });

        Map<Boolean, List<Dependency>> parted = dependencies
            .stream()
            .collect(Collectors.partitioningBy(d -> d.getScope().equals("system")));

        parted.get(true).stream().forEach(sys -> walk.remove(sys.getArtifact()));

        return new Read(model, parted.get(false), walk, parent);
    }

    private static class Read {
        public final Model model;
        public final List<Dependency> dependencies;
        public final Map<Artifact, Node> walk;
        public final Optional<POM> parent;
        public Read(Model m, List<Dependency> ds, Map<Artifact, Node> w, Optional<POM> p) {
            model = m;
            dependencies = ds;
            walk = w;
            parent = p;
        }
    }

    public static class Imports {
        public final DependencyManagement dependencyManagement;
        public final List<POM> poms;
        public Imports(DependencyManagement dm, List<POM> ps) {
            dependencyManagement = dm;
            poms = ps;
        }

        public static Imports fetch(Context ctx, List<RemoteRepository> repos, DependencyManagement dm) {
            Set<RemoteRepository> initRepos = new HashSet<>(ctx.remoteRepositories());

            initRepos.addAll(repos);

            List<ArtifactRequest> reqs = dm.getDependencies()
                .stream()
                .filter(d -> Optional.ofNullable(d.getScope()).map(s -> s.equals("import")).orElse(false)
                        && Optional.ofNullable(d.getType()).map(t -> t.equals("pom")).orElse(false))
                .map(d -> new ArtifactRequest(Aether.of(d).getArtifact(), initRepos.stream().collect(Collectors.toList()), null))
                .collect(Collectors.toList());

            try {
                List<ArtifactResult> initial = ctx
                    .repositorySystem()
                    .resolveArtifacts(ctx.repositorySystemSession(), reqs);

                DependencyManagement clone = dm.clone();

                List<POM> imports = new ArrayList<>();

                for (ArtifactResult ar : initial) {
                    Model m = readNoResolve(ctx, ar.getLocalArtifactResult().getFile());

                    Set<RemoteRepository> rs = new HashSet<>(repos);

                    rs.addAll(ctx.remoteRepositories());

                    rs.addAll(remoteRepositories(m));

                    Read r = read(ctx, rs.stream().collect(Collectors.toList()), m, Where.REMOTE);

                    Map<Artifact, Node> walk = new HashMap<>(r.walk);

                    walk.put(ar.getArtifact(), new Node(ar, r.dependencies));

                    imports.add(new POM(m, walk, r.parent));

                    for (Dependency d : r.dependencies) {
                        clone.getDependencies().add(Aether.toMaven(d));
                    }
                }


                return new Imports(clone, imports);
            } catch (ModelBuildingException | ArtifactResolutionException e ) {
                throw new RuntimeException(e);
            }
        }
    }
}
