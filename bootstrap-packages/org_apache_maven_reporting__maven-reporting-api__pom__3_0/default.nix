{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__15
}:
patchMavenJar {
  name = "maven-reporting-api";
  coordinates = "org.apache.maven.reporting:maven-reporting-api:pom:3.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.0/maven-reporting-api-3.0.pom";
      sha256 = "efaa4fc4832aad9703df46b89cb02845dbf4db6f6ac88534b7824c4956a3a5fb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
