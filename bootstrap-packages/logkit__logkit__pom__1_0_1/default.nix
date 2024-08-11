{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "logkit";
  coordinates = "logkit:logkit:pom:1.0.1";
  groupId = "logkit";
  artifactId = "logkit";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/logkit/logkit/1.0.1/logkit-1.0.1.pom";
      sha256 = "3de328dfa1b563ba6dfc5829774cf2f8dab0dc9528ed2731c35251ab7fd6c4c6";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
