{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__3_5_0
, commons-io__commons-io__jar__2_11_0
, org_codehaus_plexus__plexus-io__pom__3_4_1
}:
patchMavenJar {
  name = "plexus-io";
  coordinates = "org.codehaus.plexus:plexus-io:jar:3.4.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.4.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.1/plexus-io-3.4.1.jar";
      sha256 = "ac3be07c2968f98656604ddb8fdf08f1cfc560bc7b329fd17847f151510dc2c4";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__pom__3_4_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
