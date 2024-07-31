{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__3_0
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
, oro__oro__2_0_8
, org_hamcrest__hamcrest-core__1_3
, commons-beanutils__commons-beanutils__1_7_0
, commons-lang__commons-lang__2_4
, org_apache_commons__commons-lang3__3_8_1
, org_apache_commons__commons-text__1_3
, org_apache_velocity__velocity__1_7
, org_apache_maven_doxia__doxia-decoration-model__1_11_1
, org_apache_maven_doxia__doxia-core__1_11_1
, org_apache_velocity__velocity-tools__2_0
, commons-collections__commons-collections__3_2_2
, commons-digester__commons-digester__1_8
, org_codehaus_plexus__plexus-container-default__1_0-alpha-30
, dom4j__dom4j__1_1
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, junit__junit__4_13_2
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache_maven_doxia__doxia-skin-model__1_11_1
, org_apache__apache__pom__23
, org_apache_httpcomponents__httpclient__4_5_13
, org_apache_maven_doxia__doxia-module-xhtml5__1_11_1
, commons-logging__commons-logging__1_1
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-9
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_codehaus_plexus__plexus-i18n__1_0-beta-10
, commons-codec__commons-codec__1_11
, org_apache_maven_doxia__doxia-module-xhtml__1_11_1
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache_httpcomponents__httpcore__4_4_14
, org_codehaus_plexus__plexus-velocity__1_2
, org_apache_maven__maven-parent__pom__34
, commons-chain__commons-chain__1_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-site-renderer:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-site-renderer";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.jar";
        sha256 = "f279a087910d3e0728daad9114da8f3211cfb49b5e8457d05ee9ee5f04284527";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.pom";
        sha256 = "bd9ac2f023c8fbf7fc2ab00cee25dffbc18249870ce0da2ec46ba6689066184f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-artifact__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_hamcrest__hamcrest-core__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__2_4;
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
      drv = org_apache_velocity__velocity__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-decoration-model__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity-tools__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__3_2_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__1_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-30;
      scope = "compile";
      optional = false;
    }
    {
      drv = dom4j__dom4j__1_1;
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
      drv = org_apache_maven_doxia__doxia-skin-model__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpclient__4_5_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-module-xhtml5__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__1_2-alpha-9;
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
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-module-xhtml__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__4_4_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-velocity__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
