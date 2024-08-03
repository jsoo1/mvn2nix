{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-plugin-api__jar__3_0
, org_apache_maven__maven-model__jar__3_0
, org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2
, org_sonatype_sisu__sisu-inject-bean__jar__1_4_2
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, org_apache_maven__maven-core__jar__3_0
, org_apache_maven__maven-settings__jar__3_0
, org_apache_maven__maven-settings-builder__jar__3_0
, org_apache_maven__maven-repository-metadata__jar__3_0
, org_apache_maven__maven-model-builder__jar__3_0
, org_apache_maven__maven-aether-provider__jar__3_0
, org_sonatype_aether__aether-impl__jar__1_7
, org_sonatype_aether__aether-spi__jar__1_7
, org_sonatype_aether__aether-api__jar__1_7
, org_sonatype_aether__aether-util__jar__1_7
, org_codehaus_plexus__plexus-interpolation__jar__1_14
, org_codehaus_plexus__plexus-classworlds__jar__2_2_3
, org_codehaus_plexus__plexus-component-annotations__jar__1_7_1
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-artifact__jar__3_0
, org_apache_maven_shared__file-management__jar__3_0_0
, org_apache_maven_shared__maven-shared-io__jar__3_0_0
, org_apache_maven__maven-compat__jar__3_0
, org_apache_maven_wagon__wagon-provider-api__jar__2_10
, org_apache_maven__maven-archiver__jar__3_5_0
, commons-io__commons-io__jar__2_5
, org_apache_maven_shared__maven-shared-utils__jar__3_2_1
, org_codehaus_plexus__plexus-archiver__jar__4_2_1
, org_codehaus_plexus__plexus-io__jar__3_2_0
, org_apache_commons__commons-compress__jar__1_19
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_8
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_apache_maven_plugins__maven-jar-plugin__pom__3_2_0
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-jar-plugin:jar:3.2.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-jar-plugin";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-jar-plugin/3.2.0/maven-jar-plugin-3.2.0.jar";
      sha256 = "200dbc568096e82c6925ab425f748370e33a4c5bea40a2e64a58e4ab7d5eb9cb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__jar__3_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-impl__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-spi__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-api__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-util__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_7_1;
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
      drv = org_apache_maven__maven-artifact__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__file-management__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-io__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-compat__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__2_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-archiver__jar__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-archiver__jar__4_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_19;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__jar__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__jar__1_8;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-jar-plugin__pom__3_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
