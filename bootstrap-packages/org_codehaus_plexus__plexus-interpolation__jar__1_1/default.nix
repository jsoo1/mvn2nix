{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.1/plexus-interpolation-1.1.jar";
      sha256 = "b4ecee4e3a90b6b782d3e0b260f708615402ae8f2729be2933fedd1234b4bf07";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
