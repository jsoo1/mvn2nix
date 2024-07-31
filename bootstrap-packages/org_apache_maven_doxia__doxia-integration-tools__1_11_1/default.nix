{
  lib
, pkgs
, patchMavenJar
, classworlds__classworlds__1_1-alpha-2
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9
, org_apache_maven__maven-plugin-api__2_2_1
, org_hamcrest__hamcrest-core__1_3
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_codehaus_plexus__plexus-i18n__1_0-beta-10
, org_apache_maven__maven-model__2_2_1
, commons-io__commons-io__2_6
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache_maven_doxia__doxia-decoration-model__1_11_1
, org_apache_maven__maven-artifact__2_2_1
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_reporting__maven-reporting-api__3_0
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, junit__junit__4_13_2
, org_codehaus_plexus__plexus-utils__3_3_0
, org_codehaus_plexus__plexus-interpolation__1_26
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-integration-tools:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-integration-tools";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.jar";
        sha256 = "eee789dcb86f37f290c6c22198ea56bf529edf21590294e549a77a490ed21dbe";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.pom";
        sha256 = "1ad03814f59e835fbe6ba81d214b7f27cc6a8a688ac80791c2baa036ca53ec12";
      };
    }
  ];
  dependencies = [
    {
      drv = classworlds__classworlds__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_hamcrest__hamcrest-core__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-decoration-model__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__4_13_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_26;
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
