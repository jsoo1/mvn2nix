{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__pom__2_0_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:jar:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "2.0.13";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.13/slf4j-api-2.0.13.jar";
      sha256 = "e7c2a48e8515ba1f49fa637d57b4e2f590b3f5bd97407ac699c3aa5efb1204a9";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__pom__2_0_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
