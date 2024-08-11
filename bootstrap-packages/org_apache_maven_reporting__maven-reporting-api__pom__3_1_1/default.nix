{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
}:
patchMavenJar {
  name = "maven-reporting-api";
  coordinates = "org.apache.maven.reporting:maven-reporting-api:pom:3.1.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.pom";
      sha256 = "74903e91bafbc97bfd43a73daf64e2ee86045563cef43ee8713b588946b1a16c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
