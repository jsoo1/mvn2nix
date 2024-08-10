{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__pom__1_3
}:
patchMavenJar {
  name = "commons-codec:commons-codec:jar:1.3";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.3/commons-codec-1.3.jar";
      sha256 = "1bafd2ece2e88db4cdf835a7f8f0de65fab5b1147977a5dcc59b7c1b8c6f5080";
    };
  };
  dependencies = [
    {
      drv = commons-codec__commons-codec__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
