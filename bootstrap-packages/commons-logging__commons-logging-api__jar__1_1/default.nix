{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging-api__pom__1_1
}:
patchMavenJar {
  name = "commons-logging:commons-logging-api:jar:1.1";
  groupId = "commons-logging";
  artifactId = "commons-logging-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging-api/1.1/commons-logging-api-1.1.jar";
      sha256 = "33a4dd47bb4764e4eb3692d86386d17a0d9827f4f4bb0f70121efab6bc03ba35";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging-api__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
