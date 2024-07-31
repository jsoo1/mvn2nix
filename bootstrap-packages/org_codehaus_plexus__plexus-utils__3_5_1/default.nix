{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.5.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.5.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.1/plexus-utils-3.5.1.jar";
        sha256 = "86e0255d4c879c61b4833ed7f13124e8bb679df47debb127326e7db7dd49a07b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.5.1/plexus-utils-3.5.1.pom";
        sha256 = "94ff68edeb48204d12c99189c767164d3a9f778a1372d1dce11a41462e6236f2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
