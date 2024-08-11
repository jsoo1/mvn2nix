{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-validator";
  coordinates = "commons-validator:commons-validator:pom:1.1.4";
  groupId = "commons-validator";
  artifactId = "commons-validator";
  version = "1.1.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-validator/commons-validator/1.1.4/commons-validator-1.1.4.pom";
      sha256 = "ccaaa3dee350fd5683f2caecc4b316e5803fa304d23fb78ab69efee22cb445d1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
