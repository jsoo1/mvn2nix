{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_codehaus_plexus__plexus-component-annotations__1_5_4
, org_sonatype_sisu_inject__guice-plexus-shim__1_4_2
, org_sonatype_sisu_inject__guice-bean-inject__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_codehaus_plexus__plexus-utils__2_0_5
, org_sonatype_sisu_inject__guice-bean-binders__1_4_2
, org_sonatype_sisu_inject__guice-plexus-binders__1_4_2
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, asm__asm__3_2
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu_inject__guice-plexus-scanners__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu_inject__guice-plexus-converters__1_4_2
, org_sonatype_sisu_inject__guice-plexus-locators__1_4_2
, org_sonatype_sisu_inject__guice-plexus__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-plexus:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-plexus";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-plexus/1.4.2/sisu-inject-plexus-1.4.2.jar";
        sha256 = "a65e27aefbe74102d73cd7e3c5c7637021d294a9e7f33132f3c782a76714d0a3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-plexus/1.4.2/sisu-inject-plexus-1.4.2.pom";
        sha256 = "e302200cf462cf1af9f3e870738253cdf90d7abc8279b9d3b507a5d0d3b9f289";
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
      drv = org_sonatype_sisu_inject__guice-bean-scanners__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-shim__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-inject__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-binders__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-binders__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = asm__asm__3_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-locators__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-converters__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-scanners__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7__noaop;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-converters__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-locators__1_4_2;
      scope = "compile";
      optional = true;
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
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7;
      scope = "compile";
      optional = true;
    }
    {
      drv = aopalliance__aopalliance__1_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
