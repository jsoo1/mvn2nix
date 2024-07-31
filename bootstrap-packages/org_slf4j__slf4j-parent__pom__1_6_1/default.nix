{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:1.6.1";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.6.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.6.1/slf4j-parent-1.6.1.pom";
        sha256 = "34d6e74c1f1658771b0ae6a97a454a3ad208e4edba3a2d4ba00550e6f45ff702";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
