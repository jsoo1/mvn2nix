package com.fzakaria.mvn2nix.model;

import com.fzakaria.mvn2nix.model.nix.App;
import com.fzakaria.mvn2nix.model.nix.AtBind;
import com.fzakaria.mvn2nix.model.nix.AttrPattern;
import com.fzakaria.mvn2nix.model.nix.Attrs;
import com.fzakaria.mvn2nix.model.nix.Expr;
import com.fzakaria.mvn2nix.model.nix.Fn;
import com.fzakaria.mvn2nix.model.nix.LitL;
import com.fzakaria.mvn2nix.model.nix.LitS;
import com.fzakaria.mvn2nix.model.nix.Null;
import com.fzakaria.mvn2nix.model.nix.Param;
import com.fzakaria.mvn2nix.model.nix.Paren;
import com.fzakaria.mvn2nix.model.nix.Symbol;
import com.fzakaria.mvn2nix.model.nix.Var;
import com.google.common.hash.Hashing;
import com.google.common.io.Files;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.Dependency;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

public class NixPackageSet {
    private static Logger LOGGER = LoggerFactory.getLogger(NixPackageSet.class.getClass());

    public static String LIB = "lib";
    public static String NEW_SCOPE = "newScope";
    public static String PKGS = "pkgs";
    public static String BUILDER = "patchMavenJar";

    public static String[] packageSetParams = new String[]{LIB, NEW_SCOPE};

    public static String[] packageParams = new String[]{LIB, PKGS, BUILDER};

    public static Expr collect(Path localRepository, Map<Dependency, List<Dependency>> attrs) {
        return packageSet(new Attrs(attrs.entrySet().stream().map(e -> callPackage(localRepository, e))));
    }

    public static OutputDir collectDir(Path localRepository, Map<Dependency, List<Dependency>> attrs) {
        return new OutputDir(attrs.entrySet().stream().collect(Collectors.toMap(
            (Map.Entry<Dependency, List<Dependency>> e) -> new File(attrName(e.getKey())).toPath(),
            (Map.Entry<Dependency, List<Dependency>> e) -> callPackageFn(localRepository, e),
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

    public static Map.Entry<String, Expr> callPackage(Path localRepository, Map.Entry<Dependency, List<Dependency>> entry) {
        Expr expr = new App(new App(new Var("self.callPackage"), new Paren(
            callPackageFn(localRepository, entry)
        )), new Attrs(Stream.empty()));

        return pair(attrName(entry.getKey()), expr);
    }

    public static Expr callPackageFn(Path localRepository, Map.Entry<Dependency, List<Dependency>> e) {
        Dependency d = e.getKey();

        List<Dependency> deps = e.getValue().stream()
            .filter(d_ -> !d.equals(d_))
            .collect(Collectors.toList());

        return new Fn(param(deps), body(localRepository, d, deps));
    }

    public static Param param(List<Dependency> deps) {
        Stream<String> otherParams = Arrays.stream(packageParams);

        return new AttrPattern(Stream.concat(otherParams, deps.stream().map(NixPackageSet::attrName)).toArray(String[]::new));
    }

    public static Expr body(Path localRepository, Dependency d, List<Dependency> deps) {
        Artifact artifact = d.getArtifact();

        Expr sha256 = Optional.ofNullable(artifact.getFile())
            .map(f -> (Expr) new LitS(sha256(f)))
            .orElse((Expr) new Null());

        Expr url = url(localRepository, artifact);

        Stream.Builder<Map.Entry<String, Expr>> args = Stream.builder();

        Stream.Builder<Map.Entry<String, Expr>> src = Stream.builder();

        return new App(new Var(BUILDER), new Attrs(args
            .add(pair("name", new LitS(attrName(d))))
            .add(pair("version", new LitS(artifact.getVersion())))
            .add(pair("src", new App(new Var(PKGS + ".fetchurl"), new Attrs(src
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
        return deps.stream()
            .filter(d -> d.getScope().equals(scope))
            .map(d -> new Var(NixPackageSet.attrName(d)))
            .toArray(Expr[]::new);
    }

    public static Expr url(Path localRepository, Artifact a) {
        LOGGER.debug("relativizing artifact {}", a.getFile());

        return Optional.ofNullable(a.getFile())
            .map(f -> (Expr) new LitS("https://repo.maven.apache.org/maven2/" + localRepository.relativize(f.toPath()).toString()))
            .orElse((Expr) new Null());
    }

    public static String sha256(File f) {
        try {
            return Files.asByteSource(f).hash(Hashing.sha256()).toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
