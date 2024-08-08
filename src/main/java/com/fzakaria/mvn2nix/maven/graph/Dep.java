package com.fzakaria.mvn2nix.maven.graph;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import eu.maveniverse.maven.mima.context.Context;
import org.apache.maven.model.DependencyManagement;
import org.apache.maven.model.Model;
import org.apache.maven.model.Plugin;
import org.apache.maven.model.PluginManagement;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.graph.DependencyNode;
import org.eclipse.aether.graph.Exclusion;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.DependencyRequest;
import org.eclipse.aether.resolution.DependencyResolutionException;
import org.eclipse.aether.util.graph.visitor.PreorderNodeListGenerator;

public class Dep {
    public static PreorderNodeListGenerator resolve(Context ctx, List<RemoteRepository> repos, Dependency dep) {
        try {
            Set<RemoteRepository> moreRepos = new HashSet<>(ctx.remoteRepositories());

            moreRepos.addAll(repos);

            CollectRequest req = new CollectRequest(dep.setExclusions(exclusions), moreRepos.stream().collect(Collectors.toList()));

            DependencyNode root = ctx.repositorySystem()
                .resolveDependencies(
                    ctx.repositorySystemSession(),
                    new DependencyRequest(req, null)
                )
                .getRoot();

            PreorderNodeListGenerator pnl = new PreorderNodeListGenerator();

            root.accept(pnl);

            return pnl;
        } catch (DependencyResolutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static final List<Exclusion> exclusions = new ArrayList<>(Arrays.asList(new Exclusion[]{
        // These are not available in central (only care about central)
        new Exclusion("xerces", "xerces-impl", "", "pom"),
        new Exclusion("xerces", "xerces-impl", "", "jar"),
        new Exclusion("xml-apis", "xml-apis", "", "pom"),
        new Exclusion("xml-apis", "xml-apis", "", "jar"),
        // FIXME(jsoo1): Why?
        new Exclusion("org.jboss.ejb3", "jboss-ejb3-api", "", "jar"),
        new Exclusion("org.jboss.ejb3", "jboss-ejb3-api", "", "pom"),
        // We want to control the jdk ourselves, probably
        new Exclusion("jdk", "srczip", "", "pom"),
        new Exclusion("jdk", "srczip", "", "jar")
    }));


    public static Dependency dominatingDependency(POM pom, Dependency d) {
        Optional<Dependency> fromPOM = Optional.ofNullable(pom.model.getDependencyManagement())
            .flatMap(dm -> managedBy(dm, d));

        Supplier<Optional<Dependency>> fromParents = () -> {
            Optional<POM> parent = pom.parent;

            while (parent.isPresent()) {
                Model m = pom.parent.get().model;

                Optional<Dependency> found = Optional.ofNullable(m.getDependencyManagement())
                    .flatMap(dm -> managedBy(dm, d));

                if (found.isPresent()) {
                    return found;
                }

                parent = parent.get().parent;
            }

            return Optional.empty();
        };

        return (fromPOM.isPresent() ? fromPOM : fromParents.get()).orElse(d);
    }

    public static Optional<Dependency> managedBy(DependencyManagement dm, Dependency d) {
        return dm.getDependencies().stream().filter(md -> managedBy(md, d)).findFirst().map(Aether::of);
    }

    public static boolean managedBy(org.apache.maven.model.Dependency managing, Dependency d) {
        Artifact a = d.getArtifact();

        return managing.getGroupId().equals(a.getGroupId())
            && managing.getArtifactId().equals(a.getArtifactId())
            && Optional.ofNullable(managing.getVersion()).filter(Predicate.not(String::isEmpty)).isPresent();
    }

    public static Plugin dominatingPluginDependency(POM pom, Plugin p) {
        Optional<Plugin> fromPOM = Optional.ofNullable(pom.model.getBuild().getPluginManagement())
            .flatMap((PluginManagement pm) -> managedBy(pm, p));

        Supplier<Optional<Plugin>> fromParents = () -> {
            Optional<POM> parent = pom.parent;

            while (parent.isPresent()) {
                Model m = parent.get().model;

                Optional<Plugin> found = Optional.ofNullable(m.getBuild())
                    .flatMap(b -> Optional.ofNullable(b.getPluginManagement()))
                    .flatMap(pm -> managedBy(pm, p));

                if (found.isPresent()) {
                    return found;
                }

                parent = parent.get().parent;
            }

            return Optional.empty();
        };

        return (fromPOM.isPresent() ? fromPOM : fromParents.get()).orElse(p);
    }

    public static Optional<Plugin> managedBy(PluginManagement pm, Plugin p) {
        return pm.getPlugins().stream().filter(mp -> managedBy(mp, p)).findFirst();
    }

    public static boolean managedBy(Plugin managing, Plugin p) {
        return managing.getGroupId().equals(p.getGroupId())
            && managing.getArtifactId().equals(p.getArtifactId())
            && Optional.ofNullable(managing.getVersion()).filter(Predicate.not(String::isEmpty)).isPresent();
    }

    public static boolean isOnlyBuildScope(String scope) {
        return Pattern.compile("compile|test").asPredicate().test(scope);
    }

    public static boolean isRunScope(String scope) {
        return Pattern.compile("provided|runtime").asPredicate().test(scope);
    }
}
