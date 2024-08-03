{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_1_18
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:pom:1.14";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.14/plexus-interpolation-1.14.pom";
      sha256 = "d08155c497df37b2c3d9b5b0dfdb02ec0525b2070b5be3739fffde942fcac9af";
    };
  };
  dependencies = [
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
