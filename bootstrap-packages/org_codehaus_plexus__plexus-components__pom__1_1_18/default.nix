{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.1.18";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.1.18";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.1.18/plexus-components-1.1.18.pom";
      sha256 = "ef5dbc7fa918b6dbba71d27e5b3d7a00df624bcfa2549a7297f36fe275f634d7";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
