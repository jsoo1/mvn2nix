{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpclient__4_5_13
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_apache_commons__commons-lang3__3_8_1
, org_apache_commons__commons-text__1_3
, commons-codec__commons-codec__1_11
, org_apache_maven_doxia__doxia__pom__1_11_1
, com_google_collections__google-collections__1_0
, org_apache_httpcomponents__httpcore__4_4_14
, org_codehaus_plexus__plexus-component-annotations__2_1_0
, commons-logging__commons-logging__1_2
, org_apache_maven_doxia__doxia-core__1_11_1
, org_apache_xbean__xbean-reflect__3_7
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, org_codehaus_plexus__plexus-container-default__2_1_0
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-modules:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-modules";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-modules/1.11.1/doxia-modules-1.11.1.pom";
        sha256 = "d6c12f3529a45ec1a757455267d3ec450af1a7e72b53ccc19e1452611b806866";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpclient__4_5_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = com_google_collections__google-collections__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__4_4_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_11_1;
      scope = "compile";
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
