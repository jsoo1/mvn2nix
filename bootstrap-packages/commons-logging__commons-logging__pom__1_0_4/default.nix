{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.0.4";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0.4/commons-logging-1.0.4.pom";
      sha256 = "65d310509352b5425118225ee600a01f83ba72142d035014b5d164bc04b2d284";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
