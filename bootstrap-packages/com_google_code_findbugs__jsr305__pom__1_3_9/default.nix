{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:pom:1.3.9";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "1.3.9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/1.3.9/jsr305-1.3.9.pom";
      sha256 = "feab9191311c3d7aeef2b66d6064afc80d3d1d52d980fb07ae43c78c987ba93a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
