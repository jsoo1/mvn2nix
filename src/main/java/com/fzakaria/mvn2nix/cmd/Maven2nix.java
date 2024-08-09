package com.fzakaria.mvn2nix.cmd;

import com.fzakaria.mvn2nix.maven.Artifact;
import com.fzakaria.mvn2nix.maven.Graph;
import com.fzakaria.mvn2nix.maven.graph.Aether;
import com.fzakaria.mvn2nix.maven.graph.POM;
import com.fzakaria.mvn2nix.maven.Maven;
import com.fzakaria.mvn2nix.model.MavenArtifact;
import com.fzakaria.mvn2nix.model.MavenNixInformation;
import com.fzakaria.mvn2nix.model.NixPackageSet;
import com.fzakaria.mvn2nix.model.URLAdapter;
import com.fzakaria.mvn2nix.model.nix.Expr;
import com.google.common.hash.Hashing;
import com.google.common.io.Files;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import eu.maveniverse.maven.mima.context.Context;
import eu.maveniverse.maven.mima.context.ContextOverrides;
import eu.maveniverse.maven.mima.context.Runtimes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Predicate;
import org.apache.maven.model.Model;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import picocli.CommandLine.Command;
import picocli.CommandLine.Model.CommandSpec;
import picocli.CommandLine.Option;
import picocli.CommandLine.Parameters;
import picocli.CommandLine.Spec;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Command(name = "mvn2nix", mixinStandardHelpOptions = true, version = "mvn2nix 0.1",
        description = "Converts Maven dependencies into a Nix expression.")
public class Maven2nix implements Callable<Integer> {

    private static final Logger LOGGER = LoggerFactory.getLogger(Maven2nix.class);

    @Spec
    CommandSpec spec;

    @Parameters(index = "0", paramLabel = "FILE", description = "The pom file to traverse.", defaultValue = "pom.xml")
    private Path file = null;

    @Option(names = "--goals",
            arity = "0..*",
            description = "The goals to execute for maven to collect dependencies. Defaults to ${DEFAULT-VALUE}",
            defaultValue = "package")
    private String[] goals;

    @Option(names = "--repositories",
            arity = "0..*",
            description = "The maven repositories to try fetching artifacts from. Defaults to ${DEFAULT-VALUE}",
            defaultValue = "https://repo.maven.apache.org/maven2/")
    private String[] repositories;

    @Option(names = "--jdk",
            arity = "0..*",
            description = "The JDK to use when running Maven",
            defaultValue = "${java.home}")
    private Path javaHome;

    @Option(names = "--output-type",
            description = "Output type, one of NIX, NIX_ROOT or JSON",
            defaultValue = "JSON")
    private OutputType outType;

    @Option(names = "--output-dir",
            description = "With NIX output type, the directory to write to, otherwise stdout")
    private Path outDir;

    @Option(names = "--resolve-roots",
            description = "Also fetch and resolve artifacts for specified poms. Helpful if roots come from a repository.",
            defaultValue = "false")
    private boolean resolveRoots;

    @Option(names = "--additional-dependencies",
            description = "Additional dependencies of root in as comma-separated maven coordinates prepended by scope=. i.e.: compile=info.picocli:picocli-codegen:4.5.0,test=org.junit:junit:5.11.0")
    private String additionalDependencies = "";

    public final Context ctx;

    public Maven2nix() {
        ContextOverrides overrides = ContextOverrides.create()
            .withUserSettings(true)
            .build();

        ctx = Runtimes.INSTANCE.getRuntime().create(overrides);
    }

    @Override
    public Integer call() throws Exception {
        LOGGER.debug("Reading {}", file);

        switch (outType) {
        case JSON:
            final Maven maven = Maven.withTemporaryLocalRepository();
            maven.executeGoals(file.toFile(), javaHome.toFile(), goals);

            Collection<Artifact> artifacts = maven.collectAllArtifactsInLocalRepository();
            Map<String, MavenArtifact> dependencies = artifacts.parallelStream()
                    .collect(Collectors.toMap(
                                Artifact::getCanonicalName,
                                artifact -> {
                                    for (String repository : repositories) {
                                        URL url = getRepositoryArtifactUrl(artifact, repository);
                                        if (!doesUrlExist(url)) {
                                            LOGGER.info("URL does not exist: {}", url);
                                            continue;
                                        }

                                        File localArtifact = maven.findArtifactInLocalRepository(artifact)
                                                .orElseThrow(() -> new IllegalStateException("Should never happen"));

                                        String sha256 = calculateSha256OfFile(localArtifact);
                                        return new MavenArtifact(url, artifact.getLayout(), sha256);
                                    }
                                    throw new RuntimeException(String.format("Could not find artifact %s in any repository", artifact));
                                }
                            ));

            final MavenNixInformation information = new MavenNixInformation(dependencies);
            spec.commandLine().getOut().println(toPrettyJson(information));
            break;

        case NIX: doNix(file, resolveRoots, outDir); break;

        case NIX_ROOT: doNixRoot(POM.read(ctx, file)); break;
        }

        return 0;
    }

    public void doNix(Path file, boolean resolveRoots, Path outDir) throws IOException {
        POM pom = POM.read(ctx, file);

        List<org.eclipse.aether.graph.Dependency> initial = POM.runDependencies(pom);

        initial.addAll(getAdditionalDependencies());

        if (resolveRoots) {
            initial.add(Aether.of(pom.model));
        } else {
            // If this is a published package, then we don't care about build dependencies at all
            // Otherwise we want to make sure this can do a full offline build
            initial.addAll(POM.buildDependencies(pom));
        }

        Path localRepo = ctx.repositorySystemSession().getLocalRepository().getBasedir().getCanonicalFile().toPath();

        if (outDir != null) {
            if (!resolveRoots) {
                initial.addAll(doNixRoot(pom).getValue());
            }

            NixPackageSet.collectDir(localRepo, Graph.resolve(ctx, pom, initial)).write(outDir);
        } else {
            Expr pkgs = NixPackageSet.collect(localRepo, Graph.resolve(ctx, pom, initial));

            BufferedWriter w = new BufferedWriter(new OutputStreamWriter(System.out));

            pkgs.write(0, w);

            w.flush();
        }
    }

    public Map.Entry<org.eclipse.aether.artifact.Artifact, List<org.eclipse.aether.graph.Dependency>>
        doNixRoot(POM pom) throws IOException
    {
        Map.Entry<org.eclipse.aether.artifact.Artifact, List<org.eclipse.aether.graph.Dependency>> root = Graph.root(pom);

        root.getValue().addAll(getAdditionalDependencies());

        Expr callPackageFn = NixPackageSet.sourceCallPackageFn(root);

        BufferedWriter w = new BufferedWriter(new OutputStreamWriter(System.out));

        callPackageFn.write(0, w);

        w.newLine();

        w.flush();

        return root;
    }

    public List<org.eclipse.aether.graph.Dependency> getAdditionalDependencies() {
        return Arrays.asList(additionalDependencies.split(","))
            .stream()
            .filter(Predicate.not(String::isEmpty))
            .map(spec -> {
                String[] x = Arrays.asList(spec.split("=")).stream().filter(Predicate.not(String::isEmpty)).toArray(String[]::new);
                String scope = x[0];
                String coord = x[1];

                return new org.eclipse.aether.graph.Dependency(new DefaultArtifact(coord), scope);
            })
            .collect(Collectors.toList());
    }

    /**
     * Convert this object to a pretty JSON representation.
     *
     * The artifacts will appear in the order induced by {@link String#compareTo(String)}.
     */
    public static String toPrettyJson(MavenNixInformation information) {
        final Moshi moshi = new Moshi.Builder()
                .add(new URLAdapter())
                .build();
        JsonAdapter<MavenNixInformation> jsonAdapter = moshi
                .adapter(MavenNixInformation.class)
                .indent("  ")
                .nonNull();
        return jsonAdapter.toJson(information);
    }

    public static URL getRepositoryArtifactUrl(Artifact artifact, String repository) {
        String url = repository;
        if (!url.endsWith("/")) {
            url += "/";
        }
        try {
            return new URL(url + artifact.getLayout());
        } catch (MalformedURLException e) {
            throw new RuntimeException("Could not contact repository: " + url);
        }
    }

    public static String calculateSha256OfFile(File file) {
        try {
            return Files.asByteSource(file).hash(Hashing.sha256()).toString();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    /**
     * Check whether a given URL
     *
     * @param url The URL for the pom file.
     * @return
     */
    public static boolean doesUrlExist(URL url) {
        try {
            URLConnection urlConnection = url.openConnection();
            if (!(urlConnection instanceof HttpURLConnection)) {
                return false;
            }

            HttpURLConnection connection = (HttpURLConnection) urlConnection;
            connection.setRequestMethod("HEAD");
            connection.setInstanceFollowRedirects(true);
            connection.connect();

            int code = connection.getResponseCode();
            if (code == 200) {
                return true;
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
        return false;
    }

    public enum OutputType { JSON, NIX, NIX_ROOT }
}
