{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging-api:1.1";
  groupId = "commons-logging";
  artifactId = "commons-logging-api";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging-api/1.1/commons-logging-api-1.1.jar";
        sha256 = "33a4dd47bb4764e4eb3692d86386d17a0d9827f4f4bb0f70121efab6bc03ba35";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging-api/1.1/commons-logging-api-1.1.pom";
        sha256 = "69b8be61aa746c7d02acb1b11eb3b57cb22b246780ed71d79764195cbbe3d99d";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
