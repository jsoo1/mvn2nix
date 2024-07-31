{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__1_3
}:
patchMavenJar {
  name = "junit:junit:4.11";
  groupId = "junit";
  artifactId = "junit";
  version = "4.11";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.11/junit-4.11.jar";
        sha256 = "90a8e1603eeca48e7e879f3afbc9560715322985f39a274f6f6070b43f9d06fe";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.11/junit-4.11.pom";
        sha256 = "18ad8b0ae9e65a9195d04e25427dfe8b58175abcdae875a5a406aee38bddfb26";
      };
    }
  ];
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-core__1_3;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
