{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.2.5/maven-plugin-api-3.2.5.pom";
      sha256 = "2c3ba62ee26ffc694cfb2fc6132e4ccd7b4acf553aa86d9143dc0f77822f68ec";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
