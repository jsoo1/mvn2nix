{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-codec:commons-codec:pom:1.3";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.3/commons-codec-1.3.pom";
      sha256 = "d157e34244e884dd91fa01921ca84372e11f7bb08fedb5d456c0670c28054636";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
