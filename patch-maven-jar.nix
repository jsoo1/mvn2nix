{ lib, stdenv, emptyDirectory, mvn2nix, jdk, writeText, linkFarm }:

# This derivation takes jars from maven and makes nix aware of their
# dependencies by adding a link to the jars' classpaths in
# $out/nix-support
#
# Further, it also sets the jars' dates to the jar epoch and adds the
# jars' respective dependencies in the Class-Path MANIFEST entry.
# (Actually not yet, this is not supported on older jdks, see FIXME
# below).
#
# The idea is to:
# a) reduce the number of uberjars we have, reducing closure size
# b) track and upgrade uniformly our java package set
# c) add these entries to the bill of materials
# d) allow deep overriding of jnis or other dependencies that might
#    need patching

{ name
, version
, groupId
, artifactId
, classifier ? null
, artifacts
, dependencies
, meta ? { }
, passthru ? { }
}:
let
  classpath = mvn2nix.lib.mkRuntimeClasspath dependencies;

  # Make a file to link in $out/nix-support for nix to scan
  classpathFile = writeText "${name}-${version}-classpath"
    (lib.concatStringsSep " " classpath);

  manifest = writeText "${name}-${version}-MANIFEST.MF"
    (mvn2nix.lib.mkManifestClassPath classpath);

  maven-repository = linkFarm "${name}-${version}-maven-repository"
    (map (mvn2nix.lib.mavenRepositoryLink self) artifacts);

  self = stdenv.mkDerivation {
    inherit name version groupId artifactId classifier meta;

    # Things that can't be raw drv attributes because they are attrsets
    passthru = { inherit artifacts dependencies classpath maven-repository; } // passthru;

    src = emptyDirectory;

    nativeBuildInputs = [ jdk ];

    installPhase = ''
      runHook preInstall

      for raw_jar in ${lib.concatMapStringsSep " " (r: r.drv.outPath)
        (lib.filter (p: p.extension == "jar") artifacts)}; do
        filename=$(basename $raw_jar)

        filename=''${filename:33} # strip hash part

        cp $raw_jar $filename

        # Date is to limited to DOS date range:
        # https://bugs.openjdk.org/browse/JDK-8184940
        # FIXME(jsoo1): This style should be dependent on java version
        # jar --update --date=1980-01-01T00:00:02Z --file=$filename --manifest=${manifest}
        jar -ufm $filename ${manifest}

        mkdir -p $out/share/java

        mv $filename $out/share/java/$filename

        mkdir -p $out/nix-support

        ln -s ${classpathFile} $out/nix-support/classpath
      done

      runHook postInstall
    '';
  };
in
self
