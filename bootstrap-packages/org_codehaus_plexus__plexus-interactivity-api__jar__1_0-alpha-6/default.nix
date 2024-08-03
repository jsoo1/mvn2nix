{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4
, org_codehaus_plexus__plexus-component-api__jar__1_0-alpha-16
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-interactivity-api__pom__1_0-alpha-6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.0-alpha-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.0-alpha-6/plexus-interactivity-api-1.0-alpha-6.jar";
      sha256 = "4009db61dc8bc1ab5895bf5195718fd4df84998409e15acfb9aa796895ceddbf";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-api__jar__1_0-alpha-16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__pom__1_0-alpha-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
