{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_apache_maven_surefire__surefire-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__common-java5__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:common-java5:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "common-java5";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/common-java5/3.0.0-M5/common-java5-3.0.0-M5.jar";
      sha256 = "84dbe007403294fd76a4effbc0811fb255b0197a435fe77ec19fd6fa749142ff";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__common-java5__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
