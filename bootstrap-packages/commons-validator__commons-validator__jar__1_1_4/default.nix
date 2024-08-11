{
  lib
, pkgs
, patchMavenJar
, commons-validator__commons-validator__pom__1_1_4
}:
patchMavenJar {
  name = "commons-validator";
  coordinates = "commons-validator:commons-validator:jar:1.1.4";
  groupId = "commons-validator";
  artifactId = "commons-validator";
  version = "1.1.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-validator/commons-validator/1.1.4/commons-validator-1.1.4.jar";
      sha256 = "cbc59ea6ab683d232364ecb9b5d2576f39c782a219e93e3f0769d50345999ba9";
    };
  };
  dependencies = [
    {
      drv = commons-validator__commons-validator__pom__1_1_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
