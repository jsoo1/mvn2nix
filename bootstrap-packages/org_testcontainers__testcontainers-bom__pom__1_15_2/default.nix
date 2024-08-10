{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.testcontainers:testcontainers-bom:pom:1.15.2";
  groupId = "org.testcontainers";
  artifactId = "testcontainers-bom";
  version = "1.15.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/testcontainers/testcontainers-bom/1.15.2/testcontainers-bom-1.15.2.pom";
      sha256 = "68ed9b4871b1fc13a408f04ad394ccd53746e00a7e7ddf298e5a3f57136d206d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
