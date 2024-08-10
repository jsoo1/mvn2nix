{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-hg:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-hg";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-hg/2.0.0/maven-scm-provider-hg-2.0.0.pom";
      sha256 = "4c6a97b10cf33eb4da57e6c9dcbc00564bb674a5bba14240a92be17170fc1758";
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
