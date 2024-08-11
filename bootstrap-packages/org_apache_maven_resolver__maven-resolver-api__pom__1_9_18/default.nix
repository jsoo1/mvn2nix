{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver__pom__1_9_18
}:
patchMavenJar {
  name = "maven-resolver-api";
  coordinates = "org.apache.maven.resolver:maven-resolver-api:pom:1.9.18";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.9.18";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.9.18/maven-resolver-api-1.9.18.pom";
      sha256 = "8290daa0cd7fbba0767b07368669228387cabae99a13c3433fbd4570629ae384";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_9_18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
