{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_5_3
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:pom:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.5.3/slf4j-api-1.5.3.pom";
      sha256 = "df245129e63b356cde859cf658f9a78d3e6d73b44adb260c8ca48c033551afaa";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_5_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
