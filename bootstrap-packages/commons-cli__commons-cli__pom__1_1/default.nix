{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-cli:commons-cli:pom:1.1";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.1/commons-cli-1.1.pom";
      sha256 = "a9c281a6ce06276f6fb3e93944532c81a3a6657d1ca1a8cd7161064e097c7c45";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
