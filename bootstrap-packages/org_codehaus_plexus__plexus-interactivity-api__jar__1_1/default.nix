{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_2
, classworlds__classworlds__jar__1_1-alpha-2
, org_codehaus_plexus__plexus-interactivity-api__pom__1_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity-api:jar:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.1/plexus-interactivity-api-1.1.jar";
      sha256 = "26f701c674180dc5535ed8d7bb4a48e4ed6d4b6a97703420383cd31557c6cdeb";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_2;
      scope = "test";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
