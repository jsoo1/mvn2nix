{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.yaml:snakeyaml:2.2";
  groupId = "org.yaml";
  artifactId = "snakeyaml";
  version = "2.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/yaml/snakeyaml/2.2/snakeyaml-2.2.jar";
        sha256 = "1467931448a0817696ae2805b7b8b20bfb082652bf9c4efaed528930dc49389b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/yaml/snakeyaml/2.2/snakeyaml-2.2.pom";
        sha256 = "e982eadc788c69cf2e4de50a9f632b182c31dba50612830d348fc4b4ba8dd7d6";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
