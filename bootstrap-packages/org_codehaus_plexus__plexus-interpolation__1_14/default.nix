{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_7
, org_codehaus_plexus__plexus-components__pom__1_1_18
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:1.14";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.14";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.14/plexus-interpolation-1.14.jar";
        sha256 = "7fc63378d3e84663619b9bedace9f9fe78b276c2be3c62ca2245449294c84176";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.14/plexus-interpolation-1.14.pom";
        sha256 = "d08155c497df37b2c3d9b5b0dfdb02ec0525b2070b5be3739fffde942fcac9af";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_7;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_1_18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
