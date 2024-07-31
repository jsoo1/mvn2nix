{
  lib
, pkgs
, patchMavenJar
, com_google_collections__google-collections__1_0
, org_apache_maven_doxia__doxia__pom__1_12_0
, org_apache_xbean__xbean-reflect__3_7
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_apache_maven__maven-parent__pom__34
, org_codehaus_plexus__plexus-container-default__2_1_0
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.jar";
        sha256 = "985306162c0a9f4c309d46109447f30f02bf6fc9bc16a3e039d59e1dabd0192f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.pom";
        sha256 = "9dd99b4350223846585310694c446318b1692ba746ed717376d59619a27123b4";
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
      drv = org_apache_maven_doxia__doxia__pom__1_12_0;
      scope = "test";
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
