{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__jar__3_0
, org_apache_maven_doxia__doxia-core__jar__1_11_1
, org_apache_commons__commons-text__jar__1_3
, org_apache_httpcomponents__httpclient__jar__4_5_13
, commons-codec__commons-codec__jar__1_11
, org_apache_httpcomponents__httpcore__jar__4_4_14
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_apache_maven_doxia__doxia-sink-api__jar__1_11_1
, org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1
, org_apache_maven_doxia__doxia-skin-model__jar__1_11_1
, org_apache_maven_doxia__doxia-module-xhtml__jar__1_11_1
, org_apache_maven_doxia__doxia-module-xhtml5__jar__1_11_1
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9
, junit__junit__jar__4_13_2
, org_hamcrest__hamcrest-core__jar__1_3
, org_codehaus_plexus__plexus-velocity__jar__1_2
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_apache_velocity__velocity__jar__1_7
, commons-lang__commons-lang__jar__2_4
, org_apache_velocity__velocity-tools__jar__2_0
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-digester__commons-digester__jar__1_8
, commons-chain__commons-chain__jar__1_1
, commons-logging__commons-logging__jar__1_1
, dom4j__dom4j__jar__1_1
, oro__oro__jar__2_0_8
, commons-collections__commons-collections__jar__3_2_2
, org_apache_commons__commons-lang3__jar__3_8_1
, org_apache_maven_doxia__doxia-site-renderer__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-site-renderer";
  coordinates = "org.apache.maven.doxia:doxia-site-renderer:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-site-renderer";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.jar";
      sha256 = "f279a087910d3e0728daad9114da8f3211cfb49b5e8457d05ee9ee5f04284527";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-artifact__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__jar__1_11_1;
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
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-skin-model__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-module-xhtml__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-module-xhtml5__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__4_13_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_hamcrest__hamcrest-core__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-velocity__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity-tools__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__jar__1_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = dom4j__dom4j__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__jar__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__3_2_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-site-renderer__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
