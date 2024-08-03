{
  lib
, pkgs
, patchMavenJar
, commons-cli__commons-cli__pom__1_1
}:
patchMavenJar {
  name = "commons-cli:commons-cli:jar:1.1";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.1/commons-cli-1.1.jar";
      sha256 = "7c0c4dc03175c3a64c5b112592b70302d88be9738888b8c04029ab29ea3a3641";
    };
  };
  dependencies = [
    {
      drv = commons-cli__commons-cli__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
