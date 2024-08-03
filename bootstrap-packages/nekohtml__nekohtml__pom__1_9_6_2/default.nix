{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "nekohtml:nekohtml:pom:1.9.6.2";
  groupId = "nekohtml";
  artifactId = "nekohtml";
  version = "1.9.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/nekohtml/nekohtml/1.9.6.2/nekohtml-1.9.6.2.pom";
      sha256 = "f5655d331af6afcd4dbaedaa739b889380c771a7e83f7aea5c8544a05074cf0b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
