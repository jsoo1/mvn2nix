{
  lib
, pkgs
, patchMavenJar
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, com_google_guava__guava__jar__10_0_1
, com_google_code_findbugs__jsr305__jar__1_3_9
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_1_0
, aopalliance__aopalliance__jar__1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_0_0_M2a
, asm__asm__jar__3_3_1
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-classworlds__jar__2_4
, org_codehaus_plexus__plexus-utils__jar__2_1
, org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_0_0_M2a
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:jar:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.0.0.M2a/org.eclipse.sisu.plexus-0.0.0.M2a.jar";
      sha256 = "03df90434ddf1851924dd9ba4d5f22aff7b134265fe9c7ecdb59d9b1dc3c1987";
    };
  };
  dependencies = [
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
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__pom__0_0_0_M2a;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
