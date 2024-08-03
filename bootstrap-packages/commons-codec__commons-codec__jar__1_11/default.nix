{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__pom__1_11
}:
patchMavenJar {
  name = "commons-codec:commons-codec:jar:1.11";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.11";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.11/commons-codec-1.11.jar";
      sha256 = "e599d5318e97aa48f42136a2927e6dfa4e8881dff0e6c8e3109ddbbff51d7b7d";
    };
  };
  dependencies = [
    {
      drv = commons-codec__commons-codec__pom__1_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
