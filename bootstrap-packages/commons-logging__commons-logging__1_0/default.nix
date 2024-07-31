{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.0";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0/commons-logging-1.0.jar";
        sha256 = "45c22f543d2b5d0c20f2cac58b9cc0c8afedc273b6fc77c7545b3ad0b0041459";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0/commons-logging-1.0.pom";
        sha256 = "52b3caa59ca5e8f6279421ecb517a0b24571d666ea86bb145462076760026a6f";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
