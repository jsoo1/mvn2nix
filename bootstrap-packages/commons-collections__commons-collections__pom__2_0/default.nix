{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-collections:commons-collections:pom:2.0";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.0/commons-collections-2.0.pom";
      sha256 = "dafa5cd143542dca7ec092ef4c670a3fd285dfc02b00e790cbe25687bef513cc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
