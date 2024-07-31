{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-api:3.1.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.jar";
        sha256 = "25be6603c97d28fa3dcd122073054271c8fcaf667d220dce7a26a61a6f3cffd1";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.pom";
        sha256 = "74903e91bafbc97bfd43a73daf64e2ee86045563cef43ee8713b588946b1a16c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_11_1;
      scope = "compile";
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
