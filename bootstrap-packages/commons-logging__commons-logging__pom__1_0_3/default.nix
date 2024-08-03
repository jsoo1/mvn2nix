{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.0.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.pom";
      sha256 = "8c23c6e92f1df7f58b455cd2caa009dcc87a2fe64976e6ce461522e635aea41e";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
