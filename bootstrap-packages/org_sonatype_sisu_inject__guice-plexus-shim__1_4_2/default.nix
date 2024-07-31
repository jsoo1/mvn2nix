{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_sisu_inject__guice-bean-inject__1_4_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, junit__junit__3_8_2
, org_codehaus_plexus__plexus-component-annotations__1_5_4
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_slf4j__slf4j-api__1_6_1
, org_codehaus_plexus__plexus-utils__2_0_5
, org_sonatype_sisu_inject__guice-plexus-binders__1_4_2
, javax_inject__javax_inject__1
, asm__asm__3_2
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-binders__1_4_2
, org_sonatype_sisu_inject__guice-plexus-locators__1_4_2
, org_sonatype_sisu_inject__guice-plexus__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2
, org_sonatype_sisu_inject__guice-plexus-scanners__1_4_2
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu_inject__guice-plexus-converters__1_4_2
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-plexus-shim:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-plexus-shim";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-shim/1.4.2/guice-plexus-shim-1.4.2.jar";
        sha256 = "801ae09b672c7be7aee116b98339f32e6925a32ed44ea10b6c0af4c561a14891";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-shim/1.4.2/guice-plexus-shim-1.4.2.pom";
        sha256 = "5d33de1f0d64bf38e9386fe6e37af743b862e1329e22673ef7600b39b372132b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-bean__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-inject__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-scanners__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__3_8_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-converters__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_6_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-binders__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = asm__asm__3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-locators__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-binders__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-locators__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-scanners__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-converters__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__1_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
