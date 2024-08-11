{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers-svn__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-provider-svn-commons";
  coordinates = "org.apache.maven.scm:maven-scm-provider-svn-commons:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-svn-commons";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-svn-commons/2.0.0/maven-scm-provider-svn-commons-2.0.0.pom";
      sha256 = "19624c3291479ae775302bc5c1bd69f7b75d6ffa14b109dae7d1547ef3bce794";
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
