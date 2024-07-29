{ lib, stdenv, emptyDirectory, jdk, writeText }:

# This derivation takes jars from maven and makes nix aware of their
# dependencies by adding a link to the jars' classpaths in
# $out/nix-support
#
# Further, it also sets the jars' dates to the jar epoch and adds the
# jars' respective dependencies in the Class-Path MANIFEST entry.
#
# The idea is to:
# a) reduce the number of uberjars we have, reducing closure size
# b) track and upgrade uniformly our java package set
# c) add these entries to the bill of materials
# d) allow deep overriding of jnis or other dependencies that might
#    need patching

{ name
, version
, module
, classifier ? null
, raw
, dependencies
, meta ? { }
, passthru ? { }
}:
let
  filenames = d: map
    (raw: "${d.module.name}-${d.version}"
      + lib.optionalString (null != d.classifier) "-${d.classifier}"
      + "." + raw.extension)
    d.raw;

  # This is roughly a mapping of ivy configuration
  # to maven scope, see:
  #
  # https://github.com/coursier/coursier/blob/4fa4e7eb4cddb6db8612510b64728f331e547ec6/modules/core/shared/src/main/scala/coursier/core/Definitions.scala#L179
  #
  # Since these are binary bytecode it really only makes sense to use
  # runtime deps. This includes compile scope usually.
  classpath = lib.concatMap
    (d:
      if null != builtins.match "^default\\(compile\\)|provided|default|compile|runtime$" d.configuration
      then [ d.drv ] else [ ])
    dependencies;

  classpathFile = writeText "${name}-${version}-classpath"
    (lib.concatStringsSep " " classpath);

  manifest = writeText "${name}-${version}-MANIFEST.MF"
    (toContinuationLines ("Class-Path: "
      # Careful to use the jar after patching
      + lib.concatStringsSep " " fileUris));

  fileUris = lib.concatMap
    (p: map (f: "file://${p}/share/java/${f}") (filenames p))
    classpath;

  toContinuationLines = str:
    let
      len = builtins.stringLength str;

      loop = s:
        if builtins.stringLength s < 72
        then "${s}\n\n"
        else builtins.substring 0 71 s + "\n "
          + loop (builtins.substring 71 len s);
    in
    loop str;
in
stdenv.mkDerivation {
  inherit name version classifier meta;

  # Things that can't be raw drv attributes because they are attrsets
  passthru = { inherit module raw dependencies classpath; } // passthru;

  src = emptyDirectory;

  nativeBuildInputs = [ jdk ];

  installPhase = ''
    runHook preInstall

    for raw_jar in ${lib.concatMapStringsSep " " (r: r.drv.outPath)
      (lib.filter (p: p.extension == "jar") raw)}; do
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
}
