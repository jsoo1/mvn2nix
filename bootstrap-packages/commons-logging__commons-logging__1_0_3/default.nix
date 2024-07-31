{
  lib
, pkgs
, patchMavenJar
, log4j__log4j__1_2_6
, logkit__logkit__1_0_1
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.0.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.jar";
        sha256 = "bcfa023daea8525d6db029ea82e8f58dbf1a06006db6526d9f984dbf215d8a75";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.pom";
        sha256 = "8c23c6e92f1df7f58b455cd2caa009dcc87a2fe64976e6ce461522e635aea41e";
      };
    }
  ];
  dependencies = [
    {
      drv = log4j__log4j__1_2_6;
      scope = "compile";
      optional = true;
    }
    {
      drv = logkit__logkit__1_0_1;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
