{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-codec:commons-codec:1.2";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.2/commons-codec-1.2.jar";
        sha256 = "9898a3b3857676128987b975d0b0f035becf3da5cf677266a34d6636f2b80542";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.2/commons-codec-1.2.pom";
        sha256 = "28d6c089355487fd2e973e091a152727ac27ad2b2c1ec9cbcf916a10fc863148";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
