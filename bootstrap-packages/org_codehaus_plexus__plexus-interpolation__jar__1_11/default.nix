{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.11";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.11";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.11/plexus-interpolation-1.11.jar";
      sha256 = "fd9507feb858fa620d1b4aa4b7039fdea1a77e09d3fd28cfbddfff468d9d8c28";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
