{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_11_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-container-default__jar__2_1_0
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_apache_xbean__xbean-reflect__jar__3_7
, com_google_collections__google-collections__jar__1_0
, org_codehaus_plexus__plexus-component-annotations__jar__2_1_0
, org_apache_commons__commons-lang3__jar__3_8_1
, org_apache_commons__commons-text__jar__1_3
, org_apache_httpcomponents__httpclient__jar__4_5_13
, commons-logging__commons-logging__jar__1_2
, commons-codec__commons-codec__jar__1_11
, org_apache_httpcomponents__httpcore__jar__4_4_14
, org_apache_maven_doxia__doxia-core__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-core:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-core";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.jar";
      sha256 = "d79801594566bdd7168b1adf927c3cc40cf17a95dd4480b4151e45eb30128cd7";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_collections__google-collections__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpclient__jar__4_5_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__jar__4_4_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
