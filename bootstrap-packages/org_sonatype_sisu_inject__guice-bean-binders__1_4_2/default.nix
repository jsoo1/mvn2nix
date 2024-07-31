{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_sisu_inject__guice-bean-scanners__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, asm__asm__3_2
, org_sonatype_sisu_inject__guice-bean-locators__1_4_2
, org_sonatype_sisu_inject__guice-bean-converters__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-bean-binders:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-bean-binders";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-binders/1.4.2/guice-bean-binders-1.4.2.jar";
        sha256 = "f745be714e1a69f5b1a561dae82930466dcb1672644ca588c40baba106a6318f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-binders/1.4.2/guice-bean-binders-1.4.2.pom";
        sha256 = "c6961d24b8a4d11dabfeb9f66d330c1311231db69fc391c70dcc9a6a421ed617";
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
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-scanners__1_4_2;
      scope = "compile";
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
      drv = org_sonatype_sisu_inject__guice-bean-converters__1_4_2;
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
