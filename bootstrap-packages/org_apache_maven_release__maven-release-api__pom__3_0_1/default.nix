{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_release__maven-release__pom__3_0_1
}:
patchMavenJar {
  name = "org.apache.maven.release:maven-release-api:pom:3.0.1";
  groupId = "org.apache.maven.release";
  artifactId = "maven-release-api";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/release/maven-release-api/3.0.1/maven-release-api-3.0.1.pom";
      sha256 = "e3c2e169705ecb04b72e349c9819fb1723992fd4c63556a647acb7906de9eab3";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_release__maven-release__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
