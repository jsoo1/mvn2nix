{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__3_0
, org_apache_maven__maven-model__3_0
, org_sonatype_plexus__plexus-cipher__1_4
, com_google_code_findbugs__jsr305__2_0_1
, org_apache_maven_shared__maven-shared-components__pom__22
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_apache_maven__maven-model-builder__3_0
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven__maven-core__3_0
, org_apache_maven_wagon__wagon-provider-api__2_10
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven__maven-aether-provider__3_0
, org_apache_maven__maven-settings__3_0
, org_sonatype_aether__aether-api__1_7
, org_apache_maven__maven-parent__pom__27
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-interpolation__1_14
, org_apache_maven_shared__maven-shared-utils__3_0_0
, org_codehaus_plexus__plexus-utils__3_0_22
, org_apache_maven__maven-repository-metadata__3_0
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, commons-io__commons-io__2_4
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache__apache__pom__17
, org_apache_maven__maven-settings-builder__3_0
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_apache_maven__maven-compat__3_0
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-io:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-io";
  version = "3.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-io/3.0.0/maven-shared-io-3.0.0.jar";
        sha256 = "7f9d12b2d569ccde2cacd22a39e301b20f82567b80e21d625c5f4d93dc09c2c7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-io/3.0.0/maven-shared-io-3.0.0.pom";
        sha256 = "028d029948d0c83ca090173d1e31537f481beada8b1f138b71aed454978db89c";
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
      drv = org_apache_maven__maven-model__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__22;
      scope = "test";
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
      drv = org_apache_maven__maven-core__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__2_10;
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
      drv = org_apache_maven__maven-parent__pom__27;
      scope = "test";
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
      drv = org_apache_maven_shared__maven-shared-utils__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_4;
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
      drv = org_apache__apache__pom__17;
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
      drv = org_apache_maven__maven-compat__3_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
