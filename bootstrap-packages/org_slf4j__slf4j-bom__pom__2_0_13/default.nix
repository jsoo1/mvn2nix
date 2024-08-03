{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-bom:pom:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-bom";
  version = "2.0.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-bom/2.0.13/slf4j-bom-2.0.13.pom";
      sha256 = "7af272d7a738e2b98763791ffdd896040e8beb298a88fd606214407976cd310a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
