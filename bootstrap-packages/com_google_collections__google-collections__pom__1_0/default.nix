{
  lib
, pkgs
, patchMavenJar
, com_google__google__pom__1
}:
patchMavenJar {
  name = "com.google.collections:google-collections:pom:1.0";
  groupId = "com.google.collections";
  artifactId = "google-collections";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/collections/google-collections/1.0/google-collections-1.0.pom";
      sha256 = "893d56afcea1b22f83220fd7e49a6668c5b8901e39bd59dc57b42f55673721ce";
    };
  };
  dependencies = [
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
