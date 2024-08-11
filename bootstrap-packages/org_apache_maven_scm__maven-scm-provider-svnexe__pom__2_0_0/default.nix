{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers-svn__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-provider-svnexe";
  coordinates = "org.apache.maven.scm:maven-scm-provider-svnexe:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-svnexe";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-svnexe/2.0.0/maven-scm-provider-svnexe-2.0.0.pom";
      sha256 = "fbb4040f92e7089e21dae36d9fd848d89a22e8aa77f1edc8bfe5a434ccabfe8e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-providers-svn__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
