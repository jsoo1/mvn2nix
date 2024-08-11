{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-providers-svn";
  coordinates = "org.apache.maven.scm:maven-scm-providers-svn:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-providers-svn";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-providers-svn/2.0.0/maven-scm-providers-svn-2.0.0.pom";
      sha256 = "587b0a0c6422dfd8b513c66ae1a24a4690d9a5c34e4e3ca7052b5627e03bc995";
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
