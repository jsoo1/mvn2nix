{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.checkerframework:checker-qual:pom:3.42.0";
  groupId = "org.checkerframework";
  artifactId = "checker-qual";
  version = "3.42.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.42.0/checker-qual-3.42.0.pom";
      sha256 = "bf5fcaab272f54cbcf1bbe77c3bd963c821c9abad2058708bf0bed3c875494ca";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
