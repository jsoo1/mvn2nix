{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, asm__asm__3_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_sisu_inject__guice-bean-containers__1_4_2
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-inject__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu_inject__guice-bean-binders__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-bean:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-bean";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-bean/1.4.2/sisu-inject-bean-1.4.2.jar";
        sha256 = "fb3160e1e3a7852b441016dbcc97a34e3cf4eeb8ceb9e82edf2729439858f080";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-bean/1.4.2/sisu-inject-bean-1.4.2.pom";
        sha256 = "06d75dd6f2a0dc9ea6bf73a67491ba4790f92251c654bf4925511e5e4f48f1df";
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
      drv = asm__asm__3_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-scanners__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-containers__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-locators__1_4_2;
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
      drv = org_sonatype_sisu_inject__guice-bean-converters__1_4_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7__noaop;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-binders__1_4_2;
      scope = "compile";
      optional = true;
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
