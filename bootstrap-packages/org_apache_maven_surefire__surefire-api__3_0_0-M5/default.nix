{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4
, org_apache_maven_surefire__surefire-logger-api__3_0_0-M5
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-api:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-api";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.0.0-M5/surefire-api-3.0.0-M5.jar";
        sha256 = "f963823ad9c422b26ece431704b0de740c925ab4bfde6a34098d48056eb53594";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.0.0-M5/surefire-api-3.0.0-M5.pom";
        sha256 = "316959873e9d8ca83c5a66228a68c65508388550067bc77a98645b4a1046d9bd";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
