{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "struts";
  coordinates = "struts:struts:pom:1.2.7";
  groupId = "struts";
  artifactId = "struts";
  version = "1.2.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/struts/struts/1.2.7/struts-1.2.7.pom";
      sha256 = "08e52a6513aa3f909d82e0a88e0a2699e005d8076110b9b77b9f961efafe920c";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
