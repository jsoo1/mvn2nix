{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_codehaus_plexus__plexus-utils__2_0_5
, org_sonatype_sisu_inject__guice-plexus__pom__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu_inject__guice-plexus-metadata__1_4_2
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_codehaus_plexus__plexus-component-annotations__1_5_4
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-plexus-converters:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-plexus-converters";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-converters/1.4.2/guice-plexus-converters-1.4.2.jar";
        sha256 = "ac455e593e6f1a6fdf5d199a42e6e7194580f894586815aef1c6484d55242ad2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-plexus-converters/1.4.2/guice-plexus-converters-1.4.2.pom";
        sha256 = "3f07d59456a2e3c80e81d285bad96a2dd2e11078fbab0bbadeb08ae7ea92bb4e";
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
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_4;
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
