{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-providers-standard:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-providers-standard";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-providers-standard/2.0.0/maven-scm-providers-standard-2.0.0.pom";
      sha256 = "3702021ec1947e91afa6f57075c4e464a821d0c18fd01fbd2c830267050f6f6d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-providers__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
