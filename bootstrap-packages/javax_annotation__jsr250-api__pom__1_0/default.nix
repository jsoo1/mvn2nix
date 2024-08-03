{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.annotation:jsr250-api:pom:1.0";
  groupId = "javax.annotation";
  artifactId = "jsr250-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/annotation/jsr250-api/1.0/jsr250-api-1.0.pom";
      sha256 = "548b0ef6f04356ef2283af5140d9404f38fd3891a509d468537abf2f9462944d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
