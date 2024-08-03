{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.5.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.5.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.1/plexus-utils-3.5.1.jar";
      sha256 = "86e0255d4c879c61b4833ed7f13124e8bb679df47debb127326e7db7dd49a07b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
