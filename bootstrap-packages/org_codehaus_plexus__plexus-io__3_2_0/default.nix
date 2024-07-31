{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
, org_codehaus_plexus__plexus-utils__3_3_0
, commons-io__commons-io__2_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-io:3.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.2.0/plexus-io-3.2.0.jar";
        sha256 = "15cf8cbd9e014b7156482bbb48e515613158bdd9b4b908d21e6b900f7876f6ff";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.2.0/plexus-io-3.2.0.pom";
        sha256 = "726b07803e7aea9e03cc1da166b7c5d90d681b5b0c292f57a93cf5b07eaf7f80";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_6;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
