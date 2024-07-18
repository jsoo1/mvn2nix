package com.fzakaria.mvn2nix.model;

import com.google.common.io.Files;
import com.google.common.hash.Hashing;
import com.fzakaria.mvn2nix.model.nix.App;
import com.fzakaria.mvn2nix.model.nix.AttrPattern;
import com.fzakaria.mvn2nix.model.nix.Attrs;
import com.fzakaria.mvn2nix.model.nix.Expr;
import com.fzakaria.mvn2nix.model.nix.Fn;
import com.fzakaria.mvn2nix.model.nix.LitL;
import com.fzakaria.mvn2nix.model.nix.LitS;
import com.fzakaria.mvn2nix.model.nix.Null;
import com.fzakaria.mvn2nix.model.nix.Param;
import com.fzakaria.mvn2nix.model.nix.Var;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.Dependency;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;
import java.util.stream.Collectors;

public class NixPackageSet {
    public static String LIB = "lib";
    public static String FETCHER = "fetchurl";
    public static String BUILDER = "patchMavenJar";

    public static String[] packageSetParams = new String[]{LIB, FETCHER, BUILDER};

    public static Expr collect(Map<Dependency, List<Dependency>> attrs) {
        Param param = new AttrPattern(packageSetParams);

        Expr body = new Attrs(attrs.entrySet().stream().map(e -> NixPackageSet.callPackageFn(e)));

        return new Fn(param, body);
    }

    public static Map.Entry<String, Expr> callPackageFn(Map.Entry<Dependency, List<Dependency>> entry) {
        Dependency d = entry.getKey();

        List<Dependency> deps = entry.getValue().stream()
            .filter(d_ -> !d.equals(d_))
            .collect(Collectors.toList());

        Expr expr = new Fn(param(deps), body(d, deps));

        return pair(attrName(d), expr);
    }

    public static Param param(List<Dependency> deps) {
        Stream<String> otherParams = Arrays.stream(packageSetParams);

        return new AttrPattern(Stream.concat(otherParams, deps.stream().map(NixPackageSet::attrName)).toArray(String[]::new));
    }

    public static Expr body(Dependency d, List<Dependency> deps) {
        Artifact artifact = d.getArtifact();

        Expr sha256 = Optional.ofNullable(artifact.getFile())
            .map(f -> (Expr) new LitS(sha256(f)))
            .orElse((Expr) new Null());

        Expr url = new LitS(url(artifact));

        Stream.Builder<Map.Entry<String, Expr>> args = Stream.builder();

        Stream.Builder<Map.Entry<String, Expr>> src = Stream.builder();

        return new App(new Var(BUILDER), new Attrs(args
            .add(pair("name", new LitS(attrName(d))))
            .add(pair("src", new App(new Var(FETCHER), new Attrs(src
                .add(pair("url", url))
                .add(pair("sha256", sha256))
                .build()
            ))))
            .add(pair("compileDependencies", new LitL(scopedDeps(deps, "compile"))))
            .add(pair("runtimeDependencies", new LitL(scopedDeps(deps, "runtime"))))
            .add(pair("testDependencies", new LitL(scopedDeps(deps, "test"))))
            .add(pair("systemDependencies", new LitL(scopedDeps(deps, "system"))))
            .add(pair("providedDependencies", new LitL(scopedDeps(deps, "provided"))))
            .add(pair("meta.sourceProvenance", new LitL(new Expr[]{new Var(LIB + ".sourceTypes.binaryByteCode")})))
            .build()
        ));
    }

    public static <T, U> Map.Entry<T, U> pair(T x, U y) {
        return new AbstractMap.SimpleImmutableEntry<T, U>(x, y);
    }

    public static String attrName(Dependency dep) {
        Artifact a = dep.getArtifact();

        return Stream.of(
            Optional.of(a.getGroupId()),
            Optional.of(a.getArtifactId()),
            Optional.ofNullable(a.getExtension()),
            Optional.ofNullable(a.getClassifier()),
            Optional.of(a.getVersion())
        )
           .flatMap(Optional::stream)
            .map(s -> s.replaceAll("\\.", "_"))
           .collect(Collectors.joining("__"));
    }

    public static Expr[] scopedDeps(List<Dependency> deps, String scope) {
        return deps.stream().filter(d -> d.getScope().equals(scope)).map(d -> new Var(NixPackageSet.attrName(d))).toArray(Expr[]::new);
    }

    public static String url(Artifact a) {
        return "";
    }

    public static String sha256(File f) {
        try {
            return Files.asByteSource(f).hash(Hashing.sha256()).toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
