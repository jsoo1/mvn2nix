{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_reporting__maven-reporting-api__jar__3_1_1
, org_apache_maven__maven-core__jar__3_1_0
, org_apache_maven__maven-model__jar__3_1_0
, org_apache_maven__maven-settings__jar__3_1_0
, org_apache_maven__maven-settings-builder__jar__3_1_0
, org_apache_maven__maven-repository-metadata__jar__3_1_0
, org_apache_maven__maven-model-builder__jar__3_1_0
, org_apache_maven__maven-aether-provider__jar__3_1_0
, org_eclipse_aether__aether-spi__jar__0_9_0_M2
, org_eclipse_aether__aether-impl__jar__0_9_0_M2
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-util__jar__0_9_0_M2
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, com_google_guava__guava__jar__10_0_1
, com_google_code_findbugs__jsr305__jar__1_3_9
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_0
, aopalliance__aopalliance__jar__1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a
, asm__asm__jar__3_3_1
, org_codehaus_plexus__plexus-interpolation__jar__1_16
, org_codehaus_plexus__plexus-classworlds__jar__2_4_2
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-artifact__jar__3_1_0
, org_apache_maven__maven-plugin-api__jar__3_1_0
, org_apache_maven_shared__maven-shared-utils__jar__3_3_4
, commons-io__commons-io__jar__2_6
, org_apache_maven_doxia__doxia-sink-api__jar__1_11_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1
, org_apache_maven_doxia__doxia-core__jar__1_11_1
, org_codehaus_plexus__plexus-container-default__jar__2_1_0
, org_apache_xbean__xbean-reflect__jar__3_7
, com_google_collections__google-collections__jar__1_0
, org_apache_commons__commons-lang3__jar__3_8_1
, org_apache_commons__commons-text__jar__1_3
, org_apache_httpcomponents__httpclient__jar__4_5_13
, commons-logging__commons-logging__jar__1_2
, commons-codec__commons-codec__jar__1_11
, org_apache_httpcomponents__httpcore__jar__4_4_14
, org_apache_maven_doxia__doxia-integration-tools__jar__1_11_1
, org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10
, org_apache_maven_doxia__doxia-site-renderer__jar__1_11_1
, org_apache_maven_doxia__doxia-skin-model__jar__1_11_1
, org_apache_maven_doxia__doxia-module-xhtml__jar__1_11_1
, org_apache_maven_doxia__doxia-module-xhtml5__jar__1_11_1
, org_codehaus_plexus__plexus-velocity__jar__1_2
, org_apache_velocity__velocity__jar__1_7
, commons-lang__commons-lang__jar__2_4
, org_apache_velocity__velocity-tools__jar__2_0
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-digester__commons-digester__jar__1_8
, commons-chain__commons-chain__jar__1_1
, dom4j__dom4j__jar__1_1
, oro__oro__jar__2_0_8
, commons-collections__commons-collections__jar__3_2_2
, org_codehaus_plexus__plexus-utils__jar__3_3_1
, org_apache_maven_reporting__maven-reporting-impl__pom__3_2_0
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-impl:jar:3.2.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-impl";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.jar";
      sha256 = "28f42c2f49f11dcba6d14ab3e365375442a9ed78ca2ec588e3e1f43455a4a14d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_reporting__maven-reporting-api__jar__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_annotation__jsr250-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__10_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__jar__1_3_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a;
      scope = "compile";
      optional = false;
    }
    {
      drv = asm__asm__jar__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__jar__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
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
      drv = org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-core__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__2_1_0;
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
      drv = org_apache_maven_doxia__doxia-integration-tools__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-site-renderer__jar__1_11_1;
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
      drv = org_codehaus_plexus__plexus-velocity__jar__1_2;
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
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-impl__pom__3_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
