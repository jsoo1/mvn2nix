{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-validator";
  coordinates = "commons-validator:commons-validator:pom:1.3.1";
  groupId = "commons-validator";
  artifactId = "commons-validator";
  version = "1.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-validator/commons-validator/1.3.1/commons-validator-1.3.1.pom";
      sha256 = "7ea241ea8821d6236125d8d6388e51d9d8e9a558cee8444f016dfdadb6044ccc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
