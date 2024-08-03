{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_0_22
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.0.22";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.22";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.22/plexus-utils-3.0.22.jar";
      sha256 = "0f31c44b275f87e56d46a582ce96d03b9e2ab344cf87c4e268b34d3ad046beab";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_0_22;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
