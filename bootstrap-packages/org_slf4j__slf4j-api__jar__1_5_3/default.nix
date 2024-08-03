{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__pom__1_5_3
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:jar:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.5.3/slf4j-api-1.5.3.jar";
      sha256 = "cf7968da1bf43ae26c0da1212179a9867deccafc4a9aa71281d1f461f05d7417";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__pom__1_5_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
