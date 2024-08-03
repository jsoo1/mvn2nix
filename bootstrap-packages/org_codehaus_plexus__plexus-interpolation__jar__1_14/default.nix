{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_14
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.14";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.14/plexus-interpolation-1.14.jar";
      sha256 = "7fc63378d3e84663619b9bedace9f9fe78b276c2be3c62ca2245449294c84176";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
