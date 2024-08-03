{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-codec:commons-codec:pom:1.2";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.2/commons-codec-1.2.pom";
      sha256 = "28d6c089355487fd2e973e091a152727ac27ad2b2c1ec9cbcf916a10fc863148";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
