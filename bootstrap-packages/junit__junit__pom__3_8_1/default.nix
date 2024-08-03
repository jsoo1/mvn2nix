{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:pom:3.8.1";
  groupId = "junit";
  artifactId = "junit";
  version = "3.8.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.1/junit-3.8.1.pom";
      sha256 = "e68f33343d832398f3c8aa78afcd808d56b7c1020de4d3ad8ce47909095ee904";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
