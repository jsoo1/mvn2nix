{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__3_0_22
, org_sonatype_forge__forge-parent__pom__10
, org_codehaus_plexus__plexus__pom__4_0
, org_codehaus_plexus__plexus-components__pom__4_0
, org_codehaus_plexus__plexus-compiler-api__2_8_4
, org_codehaus_plexus__plexus-compiler__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-manager:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-manager";
  version = "2.8.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.8.4/plexus-compiler-manager-2.8.4.jar";
        sha256 = "ec139721f45f8986fbee1cc45f428cd036fe5ed434959048d5d10d3eb73b5731";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.8.4/plexus-compiler-manager-2.8.4.pom";
        sha256 = "4e9353e40fa16ba9384e8667490f0707267b30d75b77b6d588e4aaf8209936e9";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-components__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__2_8_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
