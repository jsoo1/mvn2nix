{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__jar__1_0
, commons-lang__commons-lang__jar__1_0
, junit__junit__jar__3_7
, commons-cli__commons-cli__pom__1_0
}:
patchMavenJar {
  name = "commons-cli:commons-cli:jar:1.0";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.0/commons-cli-1.0.jar";
      sha256 = "43f24850b7b7b7d79c5fa652418518fbdf427e602b1edabe6f11b85fb93eb013";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-cli__commons-cli__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
