{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:2.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.0.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.5/plexus-utils-2.0.5.jar";
        sha256 = "b4c51a337078b934ad656ee78a2d3a805a507129dc034692c67db0f94b659d3e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.5/plexus-utils-2.0.5.pom";
        sha256 = "35bc7d1213616236571072b2c56da18f7a57658de8b4a4100645b7054a2b273b";
      };
    }
  ];
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
