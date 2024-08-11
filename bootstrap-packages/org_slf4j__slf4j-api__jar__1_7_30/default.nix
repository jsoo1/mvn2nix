{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__pom__1_7_30
}:
patchMavenJar {
  name = "slf4j-api";
  coordinates = "org.slf4j:slf4j-api:jar:1.7.30";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.7.30";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.30/slf4j-api-1.7.30.jar";
      sha256 = "cdba07964d1bb40a0761485c6b1e8c2f8fd9eb1d19c53928ac0d7f9510105c57";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__pom__1_7_30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
