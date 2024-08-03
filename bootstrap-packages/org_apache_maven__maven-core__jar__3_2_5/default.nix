{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_2_5
, org_apache_maven__maven-settings__jar__3_2_5
, org_apache_maven__maven-settings-builder__jar__3_2_5
, org_apache_maven__maven-repository-metadata__jar__3_2_5
, org_apache_maven__maven-artifact__jar__3_2_5
, org_apache_maven__maven-plugin-api__jar__3_2_5
, org_apache_maven__maven-model-builder__jar__3_2_5
, org_apache_maven__maven-aether-provider__jar__3_2_5
, org_eclipse_aether__aether-spi__jar__1_0_0_v20140518
, org_eclipse_aether__aether-impl__jar__1_0_0_v20140518
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_3_0_M1
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_2_3
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__18_0
, org_codehaus_plexus__plexus-interpolation__jar__1_21
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_codehaus_plexus__plexus-classworlds__jar__2_5_2
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_7
, org_apache_maven__maven-core__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.2.5/maven-core-3.2.5.jar";
      sha256 = "4f1a0af8997e1daf778b91c5ae9e973f92df699439d909fdec7fc6055c09de12";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_3_0_M1;
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
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__no_aop__3_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__18_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_21;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_5_2;
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
      drv = org_sonatype_plexus__plexus-cipher__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
