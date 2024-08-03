{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__pom__1_0_3
}:
patchMavenJar {
  name = "commons-logging:commons-logging:jar:1.0.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.jar";
      sha256 = "bcfa023daea8525d6db029ea82e8f58dbf1a06006db6526d9f984dbf215d8a75";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__pom__1_0_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
