{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_7_30
}:
patchMavenJar {
  name = "slf4j-api";
  coordinates = "org.slf4j:slf4j-api:pom:1.7.30";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.7.30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.30/slf4j-api-1.7.30.pom";
      sha256 = "7e0747751e9b67e19dcb5206f04ea22cc03d250c422426402eadd03513f2c314";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_7_30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
