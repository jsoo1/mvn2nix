{ lib
, stdenv
, jdk
, mvn2nix
, maven
, writeText
}:

/*
  Build a jar with `mvn package` using a maven repository
  built from `dependencies`.
*/

{ src
, name
, version
, groupId
, artifactId
, classifier ? null
, dependencies
  # Whether or not to add the runtime dependencies of the
  # package to the manifest Class-Path field.
, patchClasspath ? false
, ...
}@args:

let
  # TODO(jsoo1): This classpath patching/nix-support linking should be a
  # stdenv hook
  classpath = mvn2nix.lib.mkRuntimeClasspath dependencies;

  # Make a file to link in $out/nix-support for nix to scan
  classpathFile = writeText "${name}-${version}-classpath"
    (lib.concatStringsSep " " classpath);

  manifest = writeText "${name}-${version}-MANIFEST.MF"
    (mvn2nix.lib.mkManifestClassPath classpath);

  repository = mvn2nix.mkMavenRepository dependencies;
in

stdenv.mkDerivation ({
  inherit name version src repository patchClasspath;

  passthru = {
    dependencies = dependencies;
  } // lib.optionalAttrs patchClasspath {
    inherit classpath manifest;
  };

  nativeBuildInputs = [ jdk maven ] ++ (args.nativeBuildInputs or [ ]);

  buildPhase = ''
    echo "Using repository ${repository}"
    # 'maven.repo.local' must be writable so copy it out of nix store
    ${maven}/bin/mvn package --offline -Duser.home=`pwd` -Dmaven.repo.local=${repository}
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/java

    cp target/${artifactId}-${version}.jar $out/share/java
  '' + (lib.optionalString patchClasspath ''
    # Date is to limited to DOS date range:
    # https://bugs.openjdk.org/browse/JDK-8184940
    # FIXME(jsoo1): This style should be dependent on java version
    # jar --update --date=1980-01-01T00:00:02Z --file=$filename --manifest=${manifest}

     jar -ufm $out/share/java/${artifactId}-${version}.jar ${manifest}

     mkdir -p $out/nix-support

     ln -s ${classpathFile} $out/nix-support/classpath
  '') + ''

    runHook postInstall
  '';

} // lib.removeAttrs args [ "dependencies" ])
