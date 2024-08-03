{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compiler-api__jar__2_8_4
, org_codehaus_plexus__plexus-utils__jar__3_0_22
, org_codehaus_plexus__plexus-compiler-manager__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-manager:jar:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-manager";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.8.4/plexus-compiler-manager-2.8.4.jar";
      sha256 = "ec139721f45f8986fbee1cc45f428cd036fe5ed434959048d5d10d3eb73b5731";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-compiler-api__jar__2_8_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-manager__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
