{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.1";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.1/commons-logging-1.1.pom";
      sha256 = "1f68425fce1007c3343343a27c27057f1427970682cb6d33e493c111721f7cb6";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
