{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__3_0
, org_apache_maven__maven-model__3_0
, org_sonatype_plexus__plexus-cipher__1_4
, org_codehaus_plexus__plexus-interpolation__1_25
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_codehaus_plexus__plexus-io__3_2_0
, org_apache_maven__maven-model-builder__3_0
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven__maven-parent__pom__33
, org_apache_maven__maven-core__3_0
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven-plugin-api__3_0
, org_apache_commons__commons-compress__1_19
, org_apache_maven__maven-aether-provider__3_0
, org_codehaus_plexus__plexus-component-annotations__1_7_1
, org_codehaus_plexus__plexus-archiver__4_2_0
, org_apache_maven__maven-settings__3_0
, org_sonatype_aether__aether-api__1_7
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache_maven_shared__maven-shared-components__pom__33
, org_apache_maven__maven-repository-metadata__3_0
, commons-io__commons-io__2_5
, org_iq80_snappy__snappy__0_4
, org_apache_maven_shared__maven-shared-utils__3_2_1
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_tukaani__xz__1_8
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache__apache__pom__21
, org_apache_maven__maven-settings-builder__3_0
, org_codehaus_plexus__plexus-classworlds__2_2_3
}:
patchMavenJar {
  name = "org.apache.maven:maven-archiver:3.5.0";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.5.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.5.0/maven-archiver-3.5.0.jar";
        sha256 = "44da564ea37b05aba884f89da2525fbaaadcd3348547e2c679db0f5f40e43246";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.5.0/maven-archiver-3.5.0.pom";
        sha256 = "3013b3b9e7bf1b47fe42b579db2bc7740949688cac18d48c53158a049dbc8c57";
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
      drv = org_codehaus_plexus__plexus-interpolation__1_25;
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
      drv = org_codehaus_plexus__plexus-io__3_2_0;
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
      drv = org_apache_commons__commons-compress__1_19;
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
      drv = org_codehaus_plexus__plexus-archiver__4_2_0;
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
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__33;
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
      drv = org_iq80_snappy__snappy__0_4;
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
      drv = org_tukaani__xz__1_8;
      scope = "runtime";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
