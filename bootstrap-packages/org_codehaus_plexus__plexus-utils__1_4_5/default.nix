{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:1.4.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.4.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4.5/plexus-utils-1.4.5.jar";
        sha256 = "7f87dd7347790763279191081f785ea626531fd6084a18e598f143c20d0e83f8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4.5/plexus-utils-1.4.5.pom";
        sha256 = "687d05a9521ecb8e319e6beb46abcf53e0e61be647f1c7642a86e22f46814336";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
