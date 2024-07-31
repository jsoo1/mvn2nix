{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_7_5
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:1.7.5";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.7.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar";
        sha256 = "fe30825245d2336c859dc38d60c0fc5f3668dbf29cd586828d2b5667ec355b91";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.pom";
        sha256 = "afaf8e74019b230d3f56fdd7c93fb1070c0dca34f3d2d5ab5dea9fc616bd5ca4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_7_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
