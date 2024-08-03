{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_5_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.5.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.0/plexus-utils-3.5.0.jar";
      sha256 = "e5182eb3e5e73cf89d6426ca7f5cbae2e72819b9bed68d872f80f3b535269cb8";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
