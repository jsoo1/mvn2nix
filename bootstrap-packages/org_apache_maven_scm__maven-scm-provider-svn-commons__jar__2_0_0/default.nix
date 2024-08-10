{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-svn-commons__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-svn-commons:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-svn-commons";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-svn-commons/2.0.0/maven-scm-provider-svn-commons-2.0.0.jar";
      sha256 = "211fa4a6598003a20b38e82d7b94665a351e8c33f53a213f7a9efeffa7ec8e4e";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-svn-commons__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
