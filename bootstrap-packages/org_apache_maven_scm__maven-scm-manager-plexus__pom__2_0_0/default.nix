{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-managers__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-manager-plexus:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-manager-plexus";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-manager-plexus/2.0.0/maven-scm-manager-plexus-2.0.0.pom";
      sha256 = "d2ff0fc3b9b7c0948e80f0d078b7f1b26ae63ea9933eeddf16419523636c31d5";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-managers__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
