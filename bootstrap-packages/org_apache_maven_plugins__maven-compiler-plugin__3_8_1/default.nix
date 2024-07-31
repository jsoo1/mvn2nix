{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, org_apache_maven__maven-artifact__3_0
, org_codehaus_plexus__plexus-java__0_9_10
, org_sonatype_plexus__plexus-cipher__1_4
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_apache_maven__maven-model-builder__3_0
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven__maven-parent__pom__33
, org_apache_maven_plugins__maven-plugins__pom__33
, org_apache_maven__maven-core__3_0
, org_ow2_asm__asm__6_2
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven__maven-aether-provider__3_0
, org_codehaus_plexus__plexus-component-annotations__1_7_1
, org_apache_maven__maven-settings__3_0
, org_sonatype_aether__aether-api__1_7
, org_codehaus_plexus__plexus-compiler-manager__2_8_4
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-compiler-javac__2_8_4
, org_apache_maven__maven-repository-metadata__3_0
, commons-io__commons-io__2_5
, org_codehaus_plexus__plexus-compiler-api__2_8_4
, org_apache_maven_shared__maven-shared-incremental__1_1
, com_thoughtworks_qdox__qdox__2_0-M9
, org_apache_maven_shared__maven-shared-utils__3_2_1
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache__apache__pom__21
, org_apache_maven__maven-settings-builder__3_0
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-compiler-plugin:3.8.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-compiler-plugin";
  version = "3.8.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.8.1/maven-compiler-plugin-3.8.1.jar";
        sha256 = "d14731947840eec6facef2c8f3ca050ae6dd2ff4d071700e1e62ccfd510856bd";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.8.1/maven-compiler-plugin-3.8.1.pom";
        sha256 = "9c50ff65fb7ee9045bcf94eea07d4451d13acee678387de82547cddc4d05aae9";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-model__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__0_9_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-util__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-impl__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-spi__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__3_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_7_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-api__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-manager__2_8_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-javac__2_8_4;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__2_8_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-incremental__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__2_0-M9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7__noaop;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
