{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__pom__1_2
}:
patchMavenJar {
  name = "commons-logging:commons-logging:jar:1.2";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar";
      sha256 = "daddea1ea0be0f56978ab3006b8ac92834afeefbd9b7e4e6316fca57df0fa636";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
