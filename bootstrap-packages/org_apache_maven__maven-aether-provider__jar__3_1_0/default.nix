{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_1_0
, org_apache_maven__maven-model-builder__jar__3_1_0
, org_codehaus_plexus__plexus-interpolation__jar__1_16
, org_apache_maven__maven-repository-metadata__jar__3_1_0
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-spi__jar__0_9_0_M2
, org_eclipse_aether__aether-util__jar__0_9_0_M2
, org_eclipse_aether__aether-impl__jar__0_9_0_M2
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_0_0_M2a
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, com_google_guava__guava__jar__11_0_2
, com_google_code_findbugs__jsr305__jar__1_3_9
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a
, asm__asm__jar__3_3_1
, org_codehaus_plexus__plexus-classworlds__jar__2_4_2
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, javax_inject__javax_inject__jar__1
, org_apache_maven__maven-aether-provider__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-aether-provider:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-aether-provider";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.1.0/maven-aether-provider-3.1.0.jar";
      sha256 = "ec5edc09f3cc4d4e23c7f8a1105b520d63498f5a18bd00b8d3833aa38d3f136e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__0_9_0_M2;
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
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
