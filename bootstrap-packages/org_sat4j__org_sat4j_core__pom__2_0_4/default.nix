{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sat4j:org.sat4j.core:pom:2.0.4";
  groupId = "org.sat4j";
  artifactId = "org.sat4j.core";
  version = "2.0.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sat4j/org.sat4j.core/2.0.4/org.sat4j.core-2.0.4.pom";
      sha256 = "887825cfebbe02d5b40a40255c965a823505a39354614594cec93aa69324698d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
