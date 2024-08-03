{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, commons-io__commons-io__jar__2_15_1
, org_codehaus_plexus__plexus-io__pom__3_4_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-io:jar:3.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.2/plexus-io-3.4.2.jar";
      sha256 = "6ba7fb0db6bfa348c248df3f983ae31318e9c14f35a86a932af5ffd7450aa62a";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__pom__3_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
