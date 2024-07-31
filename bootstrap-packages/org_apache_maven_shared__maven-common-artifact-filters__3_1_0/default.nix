{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__3_0
, org_apache_maven_shared__maven-shared-components__pom__33
, org_sonatype_plexus__plexus-cipher__1_4
, org_apache_maven__maven-repository-metadata__3_0
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_apache_maven__maven-model-builder__3_0
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven__maven-parent__pom__33
, org_apache_maven__maven-core__3_0
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven__maven-aether-provider__3_0
, org_codehaus_plexus__plexus-component-annotations__1_7_1
, org_apache_maven__maven-settings__3_0
, org_apache__apache__pom__21
, org_apache_maven__maven-settings-builder__3_0
, org_sonatype_aether__aether-api__1_7
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-common-artifact-filters:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.1.0/maven-common-artifact-filters-3.1.0.jar";
        sha256 = "82a584c58bd6a1b13861e2d4cc194b5afc09ca0adad9fda741f16337dcda2e96";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.1.0/maven-common-artifact-filters-3.1.0.pom";
        sha256 = "034e12a9d1d5f5618a9e0dda23aadda4ed659ec55240876b6e954cc2172be456";
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
      drv = org_apache_maven_shared__maven-shared-components__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_0;
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
      drv = org_sonatype_aether__aether-api__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_14;
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
