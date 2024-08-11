{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-api";
  coordinates = "org.apache.maven.scm:maven-scm-api:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-api";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-api/2.0.0/maven-scm-api-2.0.0.pom";
      sha256 = "8bccbe0f732624cabff3afe1fadc3e524ce79d84e6340d0761f93b57bbef1eb0";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
