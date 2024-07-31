{ lib }:
rec {
  # Make a manifest key-value pair. Once written to a file this can be
  # used with `jar -m`.
  #
  # mkManifestClassPath : [ patchMavenJar.drv ] -> str
  mkManifestClassPath = classpath:
    mkManifestEntry "Class-Path"
      # Careful to use the jar after patching
      (lib.concatMapStringsSep " " (lib.concatMap fileUris classpath));

  # Make a key-value pair for a MANIFEST.MF file
  #
  # mkManifestClassPathEntry : str -> str -> str
  mkManifestEntry = key: val: classpath: toContinuationLines ("${key}: " + val);

  # MANIFEST.MF files must not exceed 72 bytes per line.  To split
  # long lines across lines, they must be split into continuations.
  #
  # https://docs.oracle.com/en/java/javase/17/docs/specs/jar/jar.html#jar-manifest
  #
  # toContinuationLines : str -> str
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

  # The file URIs of all patchMavenJar derivation raw outputs
  #
  # fileUris : patchMavenJar.drv -> [ str ]
  fileUris = d:
    map (f: "file://${d}/share/java/${f}") (filenames d);

  # The base filenames of all patchMavenJar derivation raw outputs.
  # filename : patchMavenJar.drv -> str -> str
  filenames = d: map (raw: filename d raw.extension) d.raw;

  # The base filename of a patchMavenJar derivation for a given file
  # extension, looks like a usual maven artifact:
  #
  # guava-3.22.1-SNAPSHOT.jar
  #
  # filename : patchMavenJar.drv -> str -> str
  filename = d: extension:
    "${d.module.name}-${d.version}"
    + lib.optionalString (null != d.classifier) "-${d.classifier}"
    + "." + extension;

  # The runtime dependencies of a patchMavenJar derivation
  #
  # mkRuntimeClasspath : [ patchMavenConfiguration.drv ] -> [ patchMavenConfiguration.drv ]
  mkRuntimeClasspath = lib.concatMap
    (d: lib.optional (isRuntime d.configuration) d.drv);

  # This is roughly a mapping of ivy configuration
  # to maven scope, see:
  #
  # https://github.com/coursier/coursier/blob/4fa4e7eb4cddb6db8612510b64728f331e547ec6/modules/core/shared/src/main/scala/coursier/core/Definitions.scala#L179
  #
  # Since these are binary bytecode it really only makes sense to use
  # runtime deps. This includes compile scope usually.
  isRuntime = configuration:
    null != builtins.match "^default\\(compile\\)|provided|default|compile|runtime$" configuration;
}
