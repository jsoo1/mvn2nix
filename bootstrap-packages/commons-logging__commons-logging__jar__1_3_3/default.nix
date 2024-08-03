{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__pom__1_3_3
}:
patchMavenJar {
  name = "commons-logging:commons-logging:jar:1.3.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.3.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.3.3/commons-logging-1.3.3.jar";
      sha256 = "5828f96c09d886f9b1a0993c7804b27cf4fcec8534517164f5137ac8b67ea9b9";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__pom__1_3_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
