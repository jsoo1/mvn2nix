{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_sisu_inject__guice-bean-inject__1_4_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, asm__asm__3_2
, org_codehaus_plexus__plexus-component-annotations__1_5_4
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-binders__1_4_2
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_slf4j__slf4j-api__1_6_1
, org_codehaus_plexus__plexus-utils__2_0_5
, org_sonatype_sisu_inject__guice-plexus__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2
, org_sonatype_sisu_inject__guice-plexus-scanners__1_4_2
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-plexus-binders:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-plexus-binders";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-binders/1.4.2/guice-plexus-binders-1.4.2.jar";
        sha256 = "8bba90829f458359771a85c38fe2a025c9a30d6c015d688fb5e50c8c270dc5b9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-binders/1.4.2/guice-plexus-binders-1.4.2.pom";
        sha256 = "00d99c5e2f3e4b8c2f7b904f73c81de7089d62f3fff001eaa0c31acfe4d79aa3";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
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
      drv = asm__asm__3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_4;
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
