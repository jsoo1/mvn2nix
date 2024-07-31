{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-bom__pom__2_0_9
, org_slf4j__slf4j-parent__pom__2_0_9
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:2.0.9";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "2.0.9";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.9/slf4j-api-2.0.9.jar";
        sha256 = "0818930dc8d7debb403204611691da58e49d42c50b6ffcfdce02dadb7c3c2b6c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.9/slf4j-api-2.0.9.pom";
        sha256 = "9c3a654f9d0aa1a34b3178ebe53a89c76792e1d81fc1e9739cbe9b1610523385";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-bom__pom__2_0_9;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-parent__pom__2_0_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
