{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__1_3_7
, com_google__google__pom__1
}:
patchMavenJar {
  name = "com.google.collections:google-collections:1.0";
  groupId = "com.google.collections";
  artifactId = "google-collections";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/collections/google-collections/1.0/google-collections-1.0.jar";
        sha256 = "81b8d638af0083c4b877099d56aa0fee714485cd2ace1b6a09cab867cadb375d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/collections/google-collections/1.0/google-collections-1.0.pom";
        sha256 = "893d56afcea1b22f83220fd7e49a6668c5b8901e39bd59dc57b42f55673721ce";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__1_3_7;
      scope = "compile";
      optional = true;
    }
    {
      drv = com_google__google__pom__1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
