{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__pom__1_16_1
}:
patchMavenJar {
  name = "commons-codec:commons-codec:jar:1.16.1";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.16.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.16.1/commons-codec-1.16.1.jar";
      sha256 = "ec87bfb55f22cbd1b21e2190eeda28b2b312ed2a431ee49fbdcc01812d04a5e4";
    };
  };
  dependencies = [
    {
      drv = commons-codec__commons-codec__pom__1_16_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
