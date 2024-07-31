{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-collections:commons-collections:2.0";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.0/commons-collections-2.0.jar";
        sha256 = "b5d8a9f671a4e6698d553d0ec98d33ba70358e9b2180c845c88fc7176ddfbb1e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.0/commons-collections-2.0.pom";
        sha256 = "dafa5cd143542dca7ec092ef4c670a3fd285dfc02b00e790cbe25687bef513cc";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
