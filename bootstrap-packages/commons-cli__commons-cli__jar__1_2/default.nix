{
  lib
, pkgs
, patchMavenJar
, commons-cli__commons-cli__pom__1_2
}:
patchMavenJar {
  name = "commons-cli:commons-cli:jar:1.2";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.2/commons-cli-1.2.jar";
      sha256 = "e7cd8951956d349b568b7ccfd4f5b2529a8c113e67c32b028f52ffda371259d9";
    };
  };
  dependencies = [
    {
      drv = commons-cli__commons-cli__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
