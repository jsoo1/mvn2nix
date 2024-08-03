{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:pom:3.7";
  groupId = "junit";
  artifactId = "junit";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.7/junit-3.7.pom";
      sha256 = "48dc738ef46c04be64d0a42f90da569c9bdf0834981aaf4da8b36a47f1cebbdb";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
