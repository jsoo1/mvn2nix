{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "slf4j-parent";
  coordinates = "org.slf4j:slf4j-parent:pom:1.7.30";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.7.30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.7.30/slf4j-parent-1.7.30.pom";
      sha256 = "11647956e48a0c5bfb3ac33f6da7e83f341002b6857efd335a505b687be34b75";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
