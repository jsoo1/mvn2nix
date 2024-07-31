{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__3_3_1
, oro__oro__2_0_8
, org_apache_maven_shared__maven-shared-utils__3_3_4
, commons-beanutils__commons-beanutils__1_7_0
, commons-lang__commons-lang__2_4
, org_apache_commons__commons-lang3__3_8_1
, org_apache_commons__commons-text__1_3
, org_apache_velocity__velocity__1_7
, commons-io__commons-io__2_6
, org_apache_maven_doxia__doxia-decoration-model__1_11_1
, org_apache_maven_doxia__doxia-core__1_11_1
, org_apache_velocity__velocity-tools__2_0
, commons-collections__commons-collections__3_2_2
, commons-digester__commons-digester__1_8
, dom4j__dom4j__1_1
, org_apache_maven_doxia__doxia-logging-api__1_11_1
, org_codehaus_plexus__plexus-interpolation__1_26
, org_apache_maven_doxia__doxia-skin-model__1_11_1
, org_apache__apache__pom__23
, org_apache_maven_doxia__doxia-site-renderer__1_11_1
, org_apache_httpcomponents__httpclient__4_5_13
, org_apache_maven_doxia__doxia-module-xhtml5__1_11_1
, org_apache_maven_doxia__doxia-sink-api__1_11_1
, org_codehaus_plexus__plexus-i18n__1_0-beta-10
, commons-codec__commons-codec__1_11
, org_apache_maven_doxia__doxia-integration-tools__1_11_1
, org_apache_maven_doxia__doxia-module-xhtml__1_11_1
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache_maven_reporting__maven-reporting-api__3_1_1
, org_apache_httpcomponents__httpcore__4_4_14
, commons-logging__commons-logging__1_2
, org_apache_maven_shared__maven-shared-components__pom__34
, org_codehaus_plexus__plexus-velocity__1_2
, org_apache_maven__maven-parent__pom__34
, commons-chain__commons-chain__1_1
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-impl:3.2.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-impl";
  version = "3.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.jar";
        sha256 = "28f42c2f49f11dcba6d14ab3e365375442a9ed78ca2ec588e3e1f43455a4a14d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.pom";
        sha256 = "aee0681c3ad54ac802ff84b5b604e4e844644b5393653b7b63a651cd15215e64";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_3_4;
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
      drv = commons-io__commons-io__2_6;
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
      drv = org_codehaus_plexus__plexus-interpolation__1_26;
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
      drv = org_apache_maven_doxia__doxia-site-renderer__1_11_1;
      scope = "compile";
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
      drv = org_apache_maven_doxia__doxia-integration-tools__1_11_1;
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
      drv = org_apache_maven_reporting__maven-reporting-api__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__4_4_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
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
