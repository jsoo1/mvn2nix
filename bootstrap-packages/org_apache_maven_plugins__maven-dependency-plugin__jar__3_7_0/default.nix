{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_12_0
, org_apache_maven_doxia__doxia-logging-api__jar__1_12_0
, org_apache_maven_reporting__maven-reporting-api__jar__3_1_1
, org_apache_maven_reporting__maven-reporting-impl__jar__3_2_0
, org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1
, org_apache_maven_doxia__doxia-core__jar__1_11_1
, org_apache_commons__commons-lang3__jar__3_8_1
, org_apache_commons__commons-text__jar__1_12_0
, org_apache_httpcomponents__httpclient__jar__4_5_13
, commons-logging__commons-logging__jar__1_2
, org_apache_httpcomponents__httpcore__jar__4_4_14
, org_apache_maven_doxia__doxia-integration-tools__jar__1_11_1
, org_codehaus_plexus__plexus-interpolation__jar__1_26
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
, org_codehaus_plexus__plexus-archiver__jar__4_9_2
, javax_inject__javax_inject__jar__1
, commons-io__commons-io__jar__2_15_1
, org_apache_commons__commons-compress__jar__1_26_1
, commons-codec__commons-codec__jar__1_16_1
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-11
, org_codehaus_plexus__plexus-utils__jar__4_0_1
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_codehaus_plexus__plexus-io__jar__3_4_2
, org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10
, org_apache_maven_shared__maven-dependency-analyzer__jar__1_14_1
, org_ow2_asm__asm__jar__9_7
, org_apache_maven_shared__maven-dependency-tree__jar__3_3_0
, org_apache_maven_shared__maven-common-artifact-filters__jar__3_3_2
, org_apache_maven_shared__maven-artifact-transfer__jar__0_13_1
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_apache_maven_shared__maven-shared-utils__jar__3_4_2
, org_apache_maven_resolver__maven-resolver-util__jar__1_4_1
, org_apache_maven_resolver__maven-resolver-api__jar__1_4_1
, org_sonatype_plexus__plexus-build-api__jar__0_0_7
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_plugins__maven-dependency-plugin__pom__3_7_0
}:
patchMavenJar {
  name = "maven-dependency-plugin";
  coordinates = "org.apache.maven.plugins:maven-dependency-plugin:jar:3.7.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-dependency-plugin";
  version = "3.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.jar";
      sha256 = "1df0207e5473782bceabb6ea1725e95706946027d349129c34972890a2f8900f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__jar__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-impl__jar__3_2_0;
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
      drv = org_apache_commons__commons-lang3__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__jar__1_12_0;
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
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
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
      drv = org_codehaus_plexus__plexus-archiver__jar__4_9_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__jar__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__jar__1_9;
      scope = "runtime";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__jar__1_5_5-11;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-analyzer__jar__1_14_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__jar__9_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-tree__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__jar__3_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-artifact-transfer__jar__0_13_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__jar__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-dependency-plugin__pom__3_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
