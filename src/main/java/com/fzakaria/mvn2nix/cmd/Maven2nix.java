package com.fzakaria.mvn2nix.cmd;

import com.fzakaria.mvn2nix.maven.Artifact;
import com.fzakaria.mvn2nix.maven.Graph;
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
import org.apache.maven.model.Model;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuilderFactory;
import org.apache.maven.model.building.DefaultModelBuildingRequest;
import org.apache.maven.model.building.ModelBuilder;
import org.apache.maven.model.building.ModelBuildingException;
import org.apache.maven.model.building.ModelBuildingRequest;
import org.apache.maven.project.ProjectBuildingRequest;
import org.apache.maven.project.ProjectModelResolver;
import org.apache.maven.project.ProjectModelResolver;
import org.apache.maven.project.PublicReactorModelPool;
import org.eclipse.aether.RequestTrace;
import org.eclipse.aether.impl.RemoteRepositoryManager;
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

@Command(name = "mvn2nix", mixinStandardHelpOptions = true, version = "mvn2nix 0.1",
        description = "Converts Maven dependencies into a Nix expression.")
public class Maven2nix implements Callable<Integer> {

    private static final Logger LOGGER = LoggerFactory.getLogger(Maven2nix.class);

    private static DefaultModelBuilderFactory factory = new DefaultModelBuilderFactory();

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

    @Option(names = "--scala-version",
            description = "Specify scala version, if you need")
    private String scalaVersion;

    public Maven2nix() {
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

        case NIX: doNix(file, resolveRoots, outDir, Optional.ofNullable(scalaVersion)); break;

        case NIX_ROOT: doNixRoot(readPOM(file)); break;
        }

        return 0;
    }

    public static void doNix(Path file, boolean resolveRoots, Path outDir, Optional<String> scalaVersion) throws IOException {
        Model pom = readPOM(file);
        if (outDir != null) {
            if (!resolveRoots) {
                doNixRoot(pom);
            }
            NixPackageSet.collectDir(Graph.resolve(pom, resolveRoots, scalaVersion)).write(outDir);
        } else {
            Expr pkgs = NixPackageSet.collect(Graph.resolve(pom, resolveRoots, scalaVersion));

            BufferedWriter w = new BufferedWriter(new OutputStreamWriter(System.out));

            pkgs.write(0, w);

            w.flush();
        }
    }

    public static void doNixRoot(Model pom) throws IOException {
        Expr callPackageFn = NixPackageSet.collectSelf(Graph.self(pom));

        BufferedWriter w = new BufferedWriter(new OutputStreamWriter(System.out));

        callPackageFn.write(0, w);

        w.flush();
    }

    public static Model readPOM(Path pom) throws IOException {
        ContextOverrides overrides = ContextOverrides.create()
            .withUserSettings(true)
            .build();

        Context ctx = Runtimes.INSTANCE.getRuntime().create(overrides);

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
            return factory.newInstance().build(req).getEffectiveModel();
        } catch (ModelBuildingException e) {
            throw new IOException(e.getMessage(), (Throwable) e);
        }
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
