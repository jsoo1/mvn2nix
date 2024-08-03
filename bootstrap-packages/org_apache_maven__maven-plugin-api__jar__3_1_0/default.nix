{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_1_0
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-artifact__jar__3_1_0
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, com_google_guava__guava__jar__11_0_2
, com_google_code_findbugs__jsr305__jar__1_3_9
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_3
, aopalliance__aopalliance__jar__1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a
, asm__asm__jar__3_3_1
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-classworlds__jar__2_4_2
, org_apache_maven__maven-plugin-api__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.1.0/maven-plugin-api-3.1.0.jar";
      sha256 = "c6e743680d5ca55a39652f14777181fadf98b6cfef870c3985996f2a5cd0bf6d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_1_0;
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
      drv = com_google_guava__guava__jar__11_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__jar__1_3_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_3;
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
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
