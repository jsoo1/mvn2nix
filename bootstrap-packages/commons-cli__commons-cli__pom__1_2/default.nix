{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__11
}:
patchMavenJar {
  name = "commons-cli:commons-cli:pom:1.2";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.2/commons-cli-1.2.pom";
      sha256 = "18f3e92076e08c2fde48317025098e9f6baaa85f6912eb43f2d7e68d570e4561";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
