{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_0
, org_apache_maven__maven-settings__jar__3_0
, org_apache_maven__maven-settings-builder__jar__3_0
, org_apache_maven__maven-repository-metadata__jar__3_0
, org_apache_maven__maven-artifact__jar__3_0
, org_apache_maven__maven-plugin-api__jar__3_0
, org_apache_maven__maven-model-builder__jar__3_0
, org_apache_maven__maven-aether-provider__jar__3_0
, org_sonatype_aether__aether-impl__jar__1_7
, org_sonatype_aether__aether-spi__jar__1_7
, org_sonatype_aether__aether-api__jar__1_7
, org_sonatype_aether__aether-util__jar__1_7
, org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2
, org_sonatype_sisu__sisu-inject-bean__jar__1_4_2
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, org_codehaus_plexus__plexus-interpolation__jar__1_14
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_codehaus_plexus__plexus-classworlds__jar__2_2_3
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-core__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.0/maven-core-3.0.jar";
      sha256 = "ba03294ee53e7ba31838e4950f280d033c7744c6c7b31253afc75aa351fbd989";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_0;
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
      drv = org_apache_maven__maven-artifact__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_0;
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
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
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
      drv = org_apache_maven__maven-core__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
