{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_apache_maven_surefire__surefire-api__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-api:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-api";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.0.0-M5/surefire-api-3.0.0-M5.jar";
      sha256 = "f963823ad9c422b26ece431704b0de740c925ab4bfde6a34098d48056eb53594";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-api__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
