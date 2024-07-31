{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:3.8.1";
  groupId = "junit";
  artifactId = "junit";
  version = "3.8.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.1/junit-3.8.1.jar";
        sha256 = "b58e459509e190bed737f3592bc1950485322846cf10e78ded1d065153012d70";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.1/junit-3.8.1.pom";
        sha256 = "e68f33343d832398f3c8aa78afcd808d56b7c1020de4d3ad8ce47909095ee904";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
