{ lib }:
rec {
  # Make a manifest key-value pair. Once written to a file this can be
  # used with `jar -m`.
  #
  # mkManifestClassPath : [ patchMavenJar.drv ] -> str
  mkManifestClassPath = classpath:
    mkManifestEntry "Class-Path"
      # Careful to use the jar after patching
      (lib.concatStringsSep " " (lib.concatMap fileUris classpath));

  # Make a key-value pair for a MANIFEST.MF file
  #
  # mkManifestClassPathEntry : str -> str -> str
  mkManifestEntry = key: val: toContinuationLines ("${key}: " + val);

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

  # The path in a maven repository in a patchMavenJar.drv raw output
  # given an extension.
  #
  # mavenPath : patchMavenJar.drv -> str -> str
  mavenPath = d: extension:
    "${mavenDir d}" + filename d extension;

  # The directory in a maven repository of a patchMavenJar.drv
  #
  # mavenPath : patchMavenJar.drv -> str
  mavenDir = d:
    lib.concatStringsSep "/" (lib.splitString "." d.groupId) + /${d.artifactId}/${d.version};

  # The file URIs of all patchMavenJar derivation raw outputs
  #
  # fileUris : patchMavenJar.drv -> [ str ]
  fileUris = d:
    map (f: "file://${d}/share/java/${f}") (filenames d);

  # The base filenames of all patchMavenJar derivation artifact outputs.
  # filename : patchMavenJar.drv -> str -> str
  filenames = d: map (a: filename d a.extension) d.artifacts;

  # The base filename of a patchMavenJar derivation for a given file
  # extension, looks like a usual maven artifact:
  #
  # guava-3.22.1-SNAPSHOT.jar
  #
  # filename : patchMavenJar.drv -> str -> str
  filename = d: extension:
    "${d.groupId}-${d.version}"
    + lib.optionalString (null != d.classifier) "-${d.classifier}"
    + "." + extension;

  # The runtime dependencies of a patchMavenJar derivation
  #
  # mkRuntimeClasspath : [ { scope: str; drv: patchMavenConfiguration.drv } ] -> [ { scope: str: drv: patchMavenConfiguration.drv } ]
  mkRuntimeClasspath = lib.concatMap
    (d: lib.optional (isRuntime d.scope) d.drv);

  # This is a mapping of maven scope to time of use
  isRuntime = configuration:
    null != builtins.match "^default\\(compile\\)|provided|default|compile|runtime$" configuration;
}
