{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-digester:commons-digester:pom:1.8";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.pom";
      sha256 = "c10144f223d7ab697ccea7da0e753b75603ea7fbc4e35570068e6c477068e9b5";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
