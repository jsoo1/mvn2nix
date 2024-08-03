{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_maven_surefire__surefire__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:maven-surefire-common:pom:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "maven-surefire-common";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/maven-surefire-common/3.2.5/maven-surefire-common-3.2.5.pom";
      sha256 = "f10334bd0e4023f689fdb6b8434be7612d9ccbe881140d79ebb10701220dfbeb";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
