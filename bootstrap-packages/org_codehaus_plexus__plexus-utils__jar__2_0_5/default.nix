{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__2_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:2.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.0.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.0.5/plexus-utils-2.0.5.jar";
      sha256 = "b4c51a337078b934ad656ee78a2d3a805a507129dc034692c67db0f94b659d3e";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__2_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
