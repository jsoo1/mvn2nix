{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.9.8/maven-plugin-api-3.9.8.pom";
      sha256 = "5adba4024d31466c40c699df48cbe03ffe6fc53628701c55abc81168e2f3cc1c";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
