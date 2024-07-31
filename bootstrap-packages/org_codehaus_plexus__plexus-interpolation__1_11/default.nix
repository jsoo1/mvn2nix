{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_1_14
, org_codehaus_plexus__plexus__pom__2_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:1.11";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.11";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.11/plexus-interpolation-1.11.jar";
        sha256 = "fd9507feb858fa620d1b4aa4b7039fdea1a77e09d3fd28cfbddfff468d9d8c28";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.11/plexus-interpolation-1.11.pom";
        sha256 = "b84d281f59b9da528139e0752a0e1cab0bd98d52c58442b00e45c9748e1d9eee";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_1_14;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
