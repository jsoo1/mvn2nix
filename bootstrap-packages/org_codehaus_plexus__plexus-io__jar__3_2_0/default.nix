{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, commons-io__commons-io__jar__2_6
, org_codehaus_plexus__plexus-io__pom__3_2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-io:jar:3.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.2.0/plexus-io-3.2.0.jar";
      sha256 = "15cf8cbd9e014b7156482bbb48e515613158bdd9b4b908d21e6b900f7876f6ff";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__pom__3_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
