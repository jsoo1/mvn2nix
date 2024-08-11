{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-chain";
  coordinates = "commons-chain:commons-chain:pom:1.1";
  groupId = "commons-chain";
  artifactId = "commons-chain";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-chain/commons-chain/1.1/commons-chain-1.1.pom";
      sha256 = "cf0c15c4e843507d95be11114039794494d6fc6259118581a90e03b2db5f5acb";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
