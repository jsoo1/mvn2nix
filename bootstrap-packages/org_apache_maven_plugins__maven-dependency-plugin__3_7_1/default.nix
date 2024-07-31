{
  lib
, pkgs
, patchMavenJar
, commons-codec__commons-codec__1_16_1
, oro__oro__2_0_8
, org_sonatype_plexus__plexus-build-api__0_0_7
, commons-beanutils__commons-beanutils__1_7_0
, org_codehaus_plexus__plexus-io__3_4_2
, org_apache_velocity__velocity__1_7
, org_apache_maven_doxia__doxia-logging-api__1_12_0
, org_codehaus_plexus__plexus-utils__4_0_1
, org_apache_maven_resolver__maven-resolver-api__1_4_1
, org_apache_maven_doxia__doxia-decoration-model__1_11_1
, org_apache_maven_doxia__doxia-core__1_11_1
, org_apache_velocity__velocity-tools__2_0
, dom4j__dom4j__1_1
, org_tukaani__xz__1_9
, org_apache_maven_doxia__doxia-sink-api__1_12_0
, javax_inject__javax_inject__1
, org_apache_maven_doxia__doxia-site-renderer__1_11_1
, org_apache_httpcomponents__httpclient__4_5_13
, org_apache_maven_doxia__doxia-module-xhtml5__1_11_1
, org_ow2_asm__asm__9_7
, org_apache_maven_shared__maven-artifact-transfer__0_13_1
, org_codehaus_plexus__plexus-i18n__1_0-beta-10
, org_apache_maven_doxia__doxia-integration-tools__1_11_1
, commons-io__commons-io__2_15_1
, org_apache_maven_shared__maven-dependency-tree__3_3_0
, org_apache_maven_shared__maven-common-artifact-filters__3_4_0
, org_codehaus_plexus__plexus-velocity__1_2
, org_apache_maven__maven-parent__pom__42
, org_codehaus_plexus__plexus-archiver__4_9_2
, org_codehaus_plexus__plexus-xml__3_0_0
, com_github_luben__zstd-jni__1_5_5-11
, org_apache_maven_shared__maven-dependency-analyzer__1_14_1
, org_apache__apache__pom__32
, commons-lang__commons-lang__2_4
, org_apache_commons__commons-lang3__3_8_1
, org_apache_commons__commons-compress__1_26_1
, org_apache_maven_shared__maven-shared-utils__3_4_2
, org_apache_maven_resolver__maven-resolver-util__1_4_1
, commons-collections__commons-collections__3_2_2
, commons-digester__commons-digester__1_8
, org_codehaus_plexus__plexus-interpolation__1_26
, org_apache_maven_doxia__doxia-skin-model__1_11_1
, org_iq80_snappy__snappy__0_4
, org_apache_commons__commons-text__1_12_0
, org_apache_maven_doxia__doxia-module-xhtml__1_11_1
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache_maven_reporting__maven-reporting-api__3_1_1
, org_apache_httpcomponents__httpcore__4_4_14
, org_slf4j__slf4j-api__1_7_36
, commons-logging__commons-logging__1_2
, org_apache_maven_plugins__maven-plugins__pom__42
, org_apache_maven_reporting__maven-reporting-impl__3_2_0
, commons-chain__commons-chain__1_1
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-dependency-plugin:3.7.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-dependency-plugin";
  version = "3.7.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.1/maven-dependency-plugin-3.7.1.jar";
        sha256 = "f441769032955568249093db5b0461378000f7c58ac487c402e1036a33af301d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.1/maven-dependency-plugin-3.7.1.pom";
        sha256 = "36dfbea53edbd56028e273b1fd4cb55e977c0c0a79e3b6f1a94869558b022019";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-codec__commons-codec__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__4_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_4_1;
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
      drv = dom4j__dom4j__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__1_9;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
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
      drv = org_ow2_asm__asm__9_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-artifact-transfer__0_13_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-integration-tools__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-tree__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__3_4_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-velocity__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-archiver__4_9_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__1_5_5-11;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-analyzer__1_14_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
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
      drv = org_apache_commons__commons-compress__1_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_4_1;
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
      drv = org_iq80_snappy__snappy__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-text__1_12_0;
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
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-impl__3_2_0;
      scope = "compile";
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
