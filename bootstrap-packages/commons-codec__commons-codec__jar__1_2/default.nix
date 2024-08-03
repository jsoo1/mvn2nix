{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__pom__1_2
}:
patchMavenJar {
  name = "commons-codec:commons-codec:jar:1.2";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.2/commons-codec-1.2.jar";
      sha256 = "9898a3b3857676128987b975d0b0f035becf3da5cf677266a34d6636f2b80542";
    };
  };
  dependencies = [
    {
      drv = commons-codec__commons-codec__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
