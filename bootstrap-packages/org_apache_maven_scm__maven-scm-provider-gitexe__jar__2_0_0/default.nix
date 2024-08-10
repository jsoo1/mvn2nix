{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, commons-io__commons-io__jar__2_11_0
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-gitexe__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-gitexe:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-gitexe";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-gitexe/2.0.0/maven-scm-provider-gitexe-2.0.0.jar";
      sha256 = "db2bcf18d3ebbb71802d222438f6859f6a617bbc962e29780fb516930c409471";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-gitexe__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
