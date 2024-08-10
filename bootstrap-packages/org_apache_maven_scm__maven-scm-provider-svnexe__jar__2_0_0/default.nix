{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_apache_maven_scm__maven-scm-provider-svn-commons__jar__2_0_0
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-svnexe__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-svnexe:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-svnexe";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-svnexe/2.0.0/maven-scm-provider-svnexe-2.0.0.jar";
      sha256 = "9d1c68bc238328ad74485698523c9b393888960dff8d749770e2de527fa826d3";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-svn-commons__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
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
      drv = org_apache_maven_scm__maven-scm-provider-svnexe__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
