{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_7_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:1.7.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.7.13";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.13/slf4j-api-1.7.13.jar";
        sha256 = "20d68d0c2e4fb984ffc164852b8b68df49a2b8716076f576881bcef7649a0e35";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.13/slf4j-api-1.7.13.pom";
        sha256 = "5aab0ad8d0ee4933f57abdbedc8a3c2a1d6a5f7bd7135efbc407a29d8872abae";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_7_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
