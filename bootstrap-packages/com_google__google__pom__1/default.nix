{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google:google:pom:1";
  groupId = "com.google";
  artifactId = "google";
  version = "1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/google/1/google-1.pom";
        sha256 = "cd6db17a11a31ede794ccbd1df0e4d9750f640234731f21cff885a9997277e81";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
