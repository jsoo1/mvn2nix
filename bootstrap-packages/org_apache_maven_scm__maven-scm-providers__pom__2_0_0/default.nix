{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-providers";
  coordinates = "org.apache.maven.scm:maven-scm-providers:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-providers";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-providers/2.0.0/maven-scm-providers-2.0.0.pom";
      sha256 = "7b12af10248d07873f94a8e1f2863dd8fee861d36b3ea35d0ffb2ddd59838882";
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
