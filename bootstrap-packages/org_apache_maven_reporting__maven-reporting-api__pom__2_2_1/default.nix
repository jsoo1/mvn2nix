{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_reporting__maven-reporting__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-api:pom:2.2.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/2.2.1/maven-reporting-api-2.2.1.pom";
      sha256 = "fcb6b491372e3396b61362aa1d367e7ce0454db16abca22089be85afcf856922";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_reporting__maven-reporting__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
