{
  lib
, pkgs
, patchMavenJar
, com_google_collections__google-collections__1_0
, org_apache_xbean__xbean-reflect__3_7
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia__pom__1_11_1
, org_codehaus_plexus__plexus-container-default__2_1_0
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.11.1/doxia-logging-api-1.11.1.jar";
        sha256 = "243c66f842cd2b3ded7c6d2c36b177a65c3f5d94800cef988ba3e29ec8cf60c9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.11.1/doxia-logging-api-1.11.1.pom";
        sha256 = "89001fcd98d29ab1c3102b14e7ddf5a3eb8cc3fce38558b485772bfc694c8600";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_collections__google-collections__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
