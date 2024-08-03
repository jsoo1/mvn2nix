{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-artifact__jar__3_1_0
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-model__jar__3_1_0
, org_apache_maven__maven-core__jar__3_1_0
, org_apache_maven__maven-settings__jar__3_1_0
, org_apache_maven__maven-settings-builder__jar__3_1_0
, org_apache_maven__maven-repository-metadata__jar__3_1_0
, org_apache_maven__maven-model-builder__jar__3_1_0
, org_apache_maven__maven-aether-provider__jar__3_1_0
, org_eclipse_aether__aether-spi__jar__0_9_0_M2
, org_eclipse_aether__aether-impl__jar__0_9_0_M2
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-util__jar__0_9_0_M2
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, com_google_guava__guava__jar__10_0_1
, com_google_code_findbugs__jsr305__jar__1_3_9
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_0
, aopalliance__aopalliance__jar__1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a
, asm__asm__jar__3_3_1
, org_codehaus_plexus__plexus-interpolation__jar__1_16
, org_codehaus_plexus__plexus-classworlds__jar__2_4_2
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-plugin-api__jar__3_1_0
, org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2
, org_sonatype_sisu__sisu-inject-bean__jar__1_4_2
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, commons-io__commons-io__jar__2_6
, org_apache_maven_shared__maven-shared-utils__jar__3_3_3
, org_apache_maven_shared__maven-common-artifact-filters__pom__3_1_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-common-artifact-filters:jar:3.1.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-common-artifact-filters";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.1.1/maven-common-artifact-filters-3.1.1.jar";
      sha256 = "4a8eea7663992e49206d9f928138f334a835ad3fbbc40929342ef007ccf5471b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-artifact__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a;
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
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__10_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__jar__1_3_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a;
      scope = "compile";
      optional = false;
    }
    {
      drv = asm__asm__jar__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
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
      drv = org_apache_maven__maven-plugin-api__jar__3_1_0;
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
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_3_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__pom__3_1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
