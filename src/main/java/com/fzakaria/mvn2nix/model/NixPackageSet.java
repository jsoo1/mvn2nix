package com.fzakaria.mvn2nix.model;

import com.fzakaria.mvn2nix.maven.Graph;
import com.fzakaria.mvn2nix.model.nix.*;
import com.google.common.hash.Hashing;
import com.google.common.io.Files;
import coursier.core.Dependency;
import coursier.core.Publication;
import coursier.util.Artifact;
import scala.Tuple3;

import java.util.function.Predicate;
import java.io.BufferedWriter;
import java.io.File;
import java.nio.file.Path;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;
import java.util.stream.Collectors;

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

    public static Expr collect(Map<Dependency, Graph.Res> resolved) {
        return packageSet(new Attrs(resolved.entrySet().stream().map(e -> callPackage(e))));
    }

    public static Expr collectSelf(Map.Entry<Dependency, Graph.Res> resolved) {
        return callPackageFn(resolved);
    }

    public static OutputDir collectDir(Map<Dependency, Graph.Res> resolved) {
        return new OutputDir(resolved.entrySet().stream().collect(Collectors.toMap(
            (Map.Entry<Dependency, Graph.Res> e) -> new File(attrName(e.getKey())).toPath(),
            (Map.Entry<Dependency, Graph.Res> e) -> callPackageFn(e),
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

    public static Map.Entry<String, Expr> callPackage(Map.Entry<Dependency, Graph.Res> entry) {
        Expr expr = new App(new App(new Var("self.callPackage"), new Paren(
            callPackageFn(entry)
        )), new Attrs(Stream.empty()));

        return pair(attrName(entry.getKey()), expr);
    }

    public static Expr callPackageFn(Map.Entry<Dependency, Graph.Res> e) {
        Dependency d = e.getKey();

        Graph.Res r = e.getValue();

        List<Dependency> deps = r.dependencies.stream()
            .filter(d_ -> !d.equals(d_))
            .collect(Collectors.toList());

        Param params = new AttrPattern(Stream.concat(
            Arrays.stream(packageParams),
            deps.stream().map(NixPackageSet::attrName)
        ).toArray(String[]::new));

        Expr args = new App(new Var(PATCH_MAVEN_JAR), new Attrs(Stream.of(
            pair("name", new LitS(canonName(d))),
            pair("module", new Attrs(Stream.of(
                pair("organization", new LitS(d.module().organization())),
                pair("name", new LitS(d.module().name()))
            ))),
            pair("version", new LitS(d.version())),
            pair("classifier", Optional.ofNullable(d.publication().classifier())
                      .filter(Predicate.not(String::isEmpty))
                      .map(s -> (Expr) new LitS(s))
                      .orElse(new Null())),
            pair("raw", new LitL(r.artifacts.stream().map(a -> artifact(a._1(), a._2(), a._3())))),
            pair("dependencies", new LitL(deps.stream().map(NixPackageSet::dep))),
            pair("meta.sourceProvenance", new LitL(new Expr[]{new Var(LIB + ".sourceTypes.binaryBytecode")}))
        )));

        return new Fn(params, args);
    }

    public static Expr dep(Dependency d) {
        return new Attrs(Stream.of(
            pair("drv", new Var(attrName(d))),
            pair("configuration", new LitS(d.configuration()))
        ));
    }

    public static Expr artifact(Publication p, Artifact a, Optional<File> file) {
        return new Attrs(Stream.of(
            // This must not be "type" lest nix interpret it as a drv
            pair("_type", new LitS(p.type())),
            pair("extension", new LitS(p.ext())),
            pair("drv", new App(new Var(PKGS + ".fetchurl"), new Attrs(Stream.of(
                pair("url", new LitS(a.url())),
                pair("sha256", file
                     .map(f -> (Expr) new LitS(sha256(f)))
                     .orElse((Expr) new Null()))
        ))))));
    }

    public static <T, U> Map.Entry<T, U> pair(T x, U y) {
        return new AbstractMap.SimpleImmutableEntry<T, U>(x, y);
    }

    public static String attrName(Dependency dep) {
        return canonName(dep).replaceAll("\\.", "_").replaceAll(":", "__");
    }

    public static String canonName(Dependency d) {
        return d.mavenPrefix() + ":" + d.version();
    }

    public static String sha256(File f) {
        try {
            return Files.asByteSource(f).hash(Hashing.sha256()).toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
