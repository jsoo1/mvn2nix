{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.2.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.2.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.2.3/plexus-classworlds-2.2.3.pom";
      sha256 = "a2d14b6752e30a100a6cb03c040d0160b71b61928daf8ea97cabfb4a3335b213";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
