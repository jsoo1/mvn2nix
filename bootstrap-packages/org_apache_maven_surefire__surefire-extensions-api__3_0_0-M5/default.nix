{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-api:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-api";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-api/3.0.0-M5/surefire-extensions-api-3.0.0-M5.jar";
        sha256 = "9ffd2515eee4a071f2cf4883748db98645fc9f5952774cd8846ac506c6bbe0b2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-api/3.0.0-M5/surefire-extensions-api-3.0.0-M5.pom";
        sha256 = "937f8af02e1ab842fea45523f0b2e501a742c1ebabaea455a934876d3cb776c8";
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
