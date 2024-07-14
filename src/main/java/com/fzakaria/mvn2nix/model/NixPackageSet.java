package com.fzakaria.mvn2nix.model;

import com.fzakaria.mvn2nix.maven.Artifact;
import com.fzakaria.mvn2nix.model.MavenArtifact;
import com.fzakaria.mvn2nix.model.nix.App;
import com.fzakaria.mvn2nix.model.nix.AttrPattern;
import com.fzakaria.mvn2nix.model.nix.Attrs;
import com.fzakaria.mvn2nix.model.nix.Expr;
import com.fzakaria.mvn2nix.model.nix.Fn;
import com.fzakaria.mvn2nix.model.nix.LitS;
import com.fzakaria.mvn2nix.model.nix.LitL;
import com.fzakaria.mvn2nix.model.nix.Param;
import com.fzakaria.mvn2nix.model.nix.Var;
import org.apache.maven.model.Dependency;

import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public class NixPackageSet {
    public static String LIB = "lib";
    public static String FETCHER = "fetchurl";
    public static String BUILDER = "patchMavenJar";

    public static String[] packageSetParams = new String[]{LIB, FETCHER, BUILDER};

    public static Expr ofAttrsAndHashes(Map<String, List<Dependency>> attrs, Map<String, MavenArtifact> hashes) {
        Param param = new AttrPattern(packageSetParams);

        Expr body = new Attrs(attrs.entrySet().stream().map(e -> NixPackageSet.callPackageFn(hashes, e)));

        return new Fn(param, body);
    }

    public static Map.Entry<String, Expr> callPackageFn(Map<String, MavenArtifact> hashes, Map.Entry<String, List<Dependency>> entry) {
        String cn = entry.getKey();

        List<Dependency> deps = entry.getValue();

        Param param = param(deps);

        Expr body = body(hashes, cn, deps);

        Expr expr = new Fn(param, body);

        return new AbstractMap.SimpleImmutableEntry(cn, expr);
    }

    public static Param param(List<Dependency> deps) {
        Stream<String> otherParams = Arrays.stream(packageSetParams);

        return new AttrPattern(Stream.concat(otherParams, deps.stream().map(NixPackageSet::attrName)).toArray(String[]::new));
    }

    public static Expr body(Map<String, MavenArtifact> hashes, String cn, List<Dependency> deps) {
        MavenArtifact artifact = hashes.get(cn);

        if (artifact == null) {
            throw new RuntimeException("artifact " + cn + " not found");
        }

        Stream.Builder<Map.Entry<String, Expr>> src = Stream.builder();

        Stream.Builder<Map.Entry<String, Expr>> args = Stream.builder();

        return new App(new Var(BUILDER), new Attrs(args
            .add(pair("name", new LitS(cn)))
            .add(pair("src", new App(new Var(FETCHER), new Attrs(src
                .add(pair("url", new LitS(artifact.getUrl().toString())))
                .add(pair("sha256", new LitS(artifact.getSha256())))
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
        return new AbstractMap.SimpleImmutableEntry(x, y);
    }

    public static String attrName(Dependency dep) {
        return Artifact.builder()
            .setGroup(Optional.ofNullable(dep.getGroupId()).orElse(""))
            .setName(Optional.ofNullable(dep.getArtifactId()).orElse(""))
            .setClassifier(Optional.ofNullable(dep.getClassifier()).orElse(""))
            .setVersion(Optional.ofNullable(dep.getVersion()).orElse(""))
            .setExtension(Optional.ofNullable(dep.getType()).orElse(""))
            .build()
            .getCanonicalName()
            .replace(".", "_")
            .replace(":", "__");
    }

    public static Expr[] scopedDeps(List<Dependency> deps, String scope) {
        return deps.stream().filter(d -> d.getScope().equals(scope)).map(d -> new Var(NixPackageSet.attrName(d))).toArray(Expr[]::new);
    }
}
