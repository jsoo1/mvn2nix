{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-velocity:pom:1.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-velocity";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.pom";
      sha256 = "508a1682a95da8220e9bd582e2a9e1629d016cfe67c4769ee0b1755279ff5fd6";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
