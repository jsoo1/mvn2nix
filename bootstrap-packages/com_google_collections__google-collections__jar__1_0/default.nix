{
  lib
, pkgs
, patchMavenJar
, com_google_collections__google-collections__pom__1_0
}:
patchMavenJar {
  name = "google-collections";
  coordinates = "com.google.collections:google-collections:jar:1.0";
  groupId = "com.google.collections";
  artifactId = "google-collections";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/collections/google-collections/1.0/google-collections-1.0.jar";
      sha256 = "81b8d638af0083c4b877099d56aa0fee714485cd2ace1b6a09cab867cadb375d";
    };
  };
  dependencies = [
    {
      drv = com_google_collections__google-collections__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
