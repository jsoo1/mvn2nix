{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "stax:stax-api:pom:1.0.1";
  groupId = "stax";
  artifactId = "stax-api";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/stax/stax-api/1.0.1/stax-api-1.0.1.pom";
      sha256 = "87b13ae136a2bb9299271a0dfe8c351f76661b654ed8fde035c2cabb198cf259";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
