{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__3_0
, org_apache_maven__maven-model__3_0
, org_sonatype_plexus__plexus-cipher__1_4
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_apache_maven__maven-model-builder__3_0
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven_shared__maven-shared-components__pom__30
, org_apache_maven__maven-core__3_0
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven__maven-aether-provider__3_0
, org_apache_maven__maven-settings__3_0
, org_sonatype_aether__aether-api__1_7
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-component-annotations__1_6
, org_apache_maven__maven-parent__pom__30
, org_apache_maven__maven-repository-metadata__3_0
, commons-io__commons-io__2_5
, org_apache__apache__pom__18
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache_maven_shared__maven-shared-utils__3_1_0
, org_apache_maven__maven-settings-builder__3_0
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-common-artifact-filters:3.0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.0.1/maven-common-artifact-filters-3.0.1.jar";
        sha256 = "b291bd2d46ecd42ba26938a78ec053eedb240e5a3eef3ffc82c46ecafa95c306";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.0.1/maven-common-artifact-filters-3.0.1.pom";
        sha256 = "0adc76dbae4051be08ed8205bd0f6caea6f4c7c3cb836a03f6bd2fd734d149ad";
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
      drv = org_apache_maven_shared__maven-shared-components__pom__30;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__3_0;
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
      drv = org_codehaus_plexus__plexus-component-annotations__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__30;
      scope = "test";
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
      drv = org_apache__apache__pom__18;
      scope = "test";
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
      drv = org_apache_maven_shared__maven-shared-utils__3_1_0;
      scope = "compile";
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
