{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__pom__1_0
}:
patchMavenJar {
  name = "commons-logging:commons-logging:jar:1.0";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0/commons-logging-1.0.jar";
      sha256 = "45c22f543d2b5d0c20f2cac58b9cc0c8afedc273b6fc77c7545b3ad0b0041459";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
