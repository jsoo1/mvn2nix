{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_11_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_apache_maven_reporting__maven-reporting-api__pom__3_1_1
}:
patchMavenJar {
  name = "maven-reporting-api";
  coordinates = "org.apache.maven.reporting:maven-reporting-api:jar:3.1.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.jar";
      sha256 = "25be6603c97d28fa3dcd122073054271c8fcaf667d220dce7a26a61a6f3cffd1";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__pom__3_1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
