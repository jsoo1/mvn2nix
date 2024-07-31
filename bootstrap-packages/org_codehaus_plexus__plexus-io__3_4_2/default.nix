{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_codehaus_plexus__plexus__pom__16
, org_codehaus_plexus__plexus-utils__4_0_0
, commons-io__commons-io__2_15_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-io:3.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.2/plexus-io-3.4.2.jar";
        sha256 = "6ba7fb0db6bfa348c248df3f983ae31318e9c14f35a86a932af5ffd7450aa62a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.2/plexus-io-3.4.2.pom";
        sha256 = "aafc90ce29fe79bc6a0aeafb2bf6bdeaf979a1b8211493428a2290228170355d";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__16;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_15_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
