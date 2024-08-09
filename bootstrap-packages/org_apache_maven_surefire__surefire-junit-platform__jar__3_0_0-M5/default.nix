{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__common-java5__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_junit_platform__junit-platform-launcher__jar__1_3_2
, org_apiguardian__apiguardian-api__jar__1_0_0
, org_junit_platform__junit-platform-engine__jar__1_3_2
, org_junit_platform__junit-platform-commons__jar__1_3_2
, org_opentest4j__opentest4j__jar__1_1_1
, org_apache_maven_surefire__surefire-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-junit-platform__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-junit-platform:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-junit-platform";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-junit-platform/3.0.0-M5/surefire-junit-platform-3.0.0-M5.jar";
      sha256 = "6010da4305b5cfb4c8d89075158bb74d48cc8b560dcbdca593541548d0d78aa3";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__common-java5__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-launcher__jar__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apiguardian__apiguardian-api__jar__1_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-engine__jar__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-commons__jar__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_opentest4j__opentest4j__jar__1_1_1;
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
      drv = org_apache_maven_surefire__surefire-junit-platform__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
