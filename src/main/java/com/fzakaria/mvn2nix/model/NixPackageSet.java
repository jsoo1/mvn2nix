package com.fzakaria.mvn2nix.model;

import com.fzakaria.mvn2nix.maven.Graph;
import com.fzakaria.mvn2nix.model.nix.*;
import eu.maveniverse.maven.mima.context.Context;
import java.net.URISyntaxException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.resolution.ArtifactResult;
import com.google.common.hash.Hashing;
import com.google.common.io.Files;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.Path;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Optional;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/*
  Walk the dependency tree and the local repository to get a "package
  set". For us that means an attrset of functions that can be called
  by `callPackage` of a new attrset made by `makeScope`.

  Ideally all these would get accumulated into one giant package set
  in nixpkgs or somewhere like all-hackage-packages, but for now this
  allows users to import and contribute them easily.

  Inspired by importers in `guix`.

  NB: This generates a thing that is more like ivy than a maven
  specification. This is not because we generate ivy repositories on
  the other end so much as we reserve the right to. (Ivy layouts can
  be translated to Maven but not vice-versa).
*/
public class NixPackageSet {
    public static String LIB = "lib";
    public static String NEW_SCOPE = "newScope";
    public static String PKGS = "pkgs";
    public static String PATCH_MAVEN_JAR = "patchMavenJar";

    public static String[] packageSetParams = new String[]{LIB, NEW_SCOPE};

    public static String[] packageParams = new String[]{LIB, PKGS, PATCH_MAVEN_JAR};

    public static Expr collect(Path localRepo, Map<Artifact, Graph.Res> resolved) {
        return packageSet(new Attrs(resolved.entrySet().stream().map(e -> callPackage(localRepo, e))));
    }

    public static Expr collectRoot(Path localRepo, Graph.Root root) {
        return callPackageFn(localRepo, resolved);
    }

    public static OutputDir collectDir(Path localRepo, Map<Artifact, Graph.Res> resolved) {
        return new OutputDir(resolved.entrySet().stream().collect(Collectors.toMap(
            (Map.Entry<Artifact, Graph.Res> e) -> new File(attrName(e.getKey())).toPath(),
            (Map.Entry<Artifact, Graph.Res> e) -> callPackageFn(localRepo, e),
            (Expr e1, Expr e2) -> e2
        )));
    }

    public static Expr packageSet(Expr body) {
        String args = "args";

        return new Fn(new AtBind(args, new AttrPattern(packageSetParams)),
            new App(new Var(LIB + ".makeScope"), new App(new Var(NEW_SCOPE), new Paren(
                new Fn(new Symbol("self"),
                    new App(new Var(args), new App(new Var("//"), body)))
        ))));
    }

    public static Map.Entry<String, Expr> callPackage(Path localRepo, Map.Entry<Artifact, Graph.Res> entry) {
        Expr expr = new App(new App(new Var("self.callPackage"), new Paren(
            callPackageFn(localRepo, entry)
        )), new Attrs(Stream.empty()));

        return pair(attrName(entry.getKey()), expr);
    }

    public static Expr callPackageFn(Path localRepo, Map.Entry<Artifact, Graph.Res> e) {
        Artifact a = e.getKey();

        Graph.Res r = e.getValue();

        List<Dependency> deps = r.dependencies.stream()
            .filter(a_ -> !a.toString().equals(a_.getArtifact().toString()))
            .filter(distinctByKey(d_ -> d_.getArtifact().toString()))
            .collect(Collectors.toList());

        Param params = new AttrPattern(Stream.concat(
            Arrays.stream(packageParams),
            deps.stream().map(d_ -> attrName(d_.getArtifact()))
        ).toArray(String[]::new));

        Expr args = new App(new Var(PATCH_MAVEN_JAR), new Attrs(Stream.of(
            pair("name", new LitS(a.toString())),
            pair("groupId", new LitS(a.getGroupId())),
            pair("artifactId", new LitS(a.getArtifactId())),
            pair("version", new LitS(a.getVersion())),
            pair("classifier", Optional.ofNullable(a.getClassifier())
                      .filter(Predicate.not(String::isEmpty))
                      .map(s -> (Expr) new LitS(s))
                      .orElse(new Null())),
            pair("artifact", artifact(localRepo, r.artifact)),
            pair("dependencies", new LitL(deps.stream().map(NixPackageSet::dep))),
            pair("meta.sourceProvenance", new LitL(new Expr[]{new Var(LIB + ".sourceTypes.binaryBytecode")}))
        )));

        return new Fn(params, args);
    }

    public static Expr dep(Dependency d) {
        return new Attrs(Stream.of(
            pair("drv", new Var(attrName(d.getArtifact()))),
            pair("scope", new LitS(d.getScope())),
            pair("optional", new LitB(d.getOptional()))
        ));
    }

    public static Expr artifact(Path localRepo, ArtifactResult a) {
        return new Attrs(Stream.of(
            pair("extension", new LitS(a.getArtifact().getExtension())),
            pair("drv", new App(new Var(PKGS + ".fetchurl"), new Attrs(Stream.of(
                pair("url", new LitS(url(localRepo, a))),
                pair("sha256", new LitS(sha256(a.getLocalArtifactResult().getFile())))
        ))))));
    }

    public static <T, U> Map.Entry<T, U> pair(T x, U y) {
        return new AbstractMap.SimpleImmutableEntry<T, U>(x, y);
    }

    public static String url(Path localRepo, ArtifactResult a) {
        try {
            String repo = Optional.ofNullable(a.getLocalArtifactResult().getRepository())
                .map(r -> r.getUrl())
                .orElse(CENTRAL);

            URI remote = new URI(repo);

            Path base = new File(remote.getPath()).toPath();

            Path rel = localRepo.relativize(a.getLocalArtifactResult().getFile().toPath());

            return remote.resolve(base.resolve(rel).toString()).toString();
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public static final String CENTRAL = "https://repo.maven.apache.org/maven2/";

    public static String attrName(Artifact a) {
        return a.toString().replaceAll("\\.", "_").replaceAll(":", "__");
    }

    public static String sha256(File f) {
        try {
            return Files.asByteSource(f).hash(Hashing.sha256()).toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
        Set<Object> seen = ConcurrentHashMap.newKeySet();
        return t -> seen.add(keyExtractor.apply(t));
    }
}
