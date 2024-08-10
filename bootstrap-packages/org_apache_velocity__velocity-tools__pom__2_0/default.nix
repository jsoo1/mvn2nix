{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache.velocity:velocity-tools:pom:2.0";
  groupId = "org.apache.velocity";
  artifactId = "velocity-tools";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity-tools/2.0/velocity-tools-2.0.pom";
      sha256 = "b12f13ab462281d48c573acabf124e067a9d49e65ec72b27597db9e91f721b95";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
