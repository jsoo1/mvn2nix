{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "antlr";
  coordinates = "antlr:antlr:pom:2.7.2";
  groupId = "antlr";
  artifactId = "antlr";
  version = "2.7.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/antlr/antlr/2.7.2/antlr-2.7.2.pom";
      sha256 = "5e9abd6c993c7d2859fb759bfb77355a6c8184aa5d200aa740e345da5f4c58fe";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
