{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-7
, junit__junit__jar__3_8_1
, classworlds__classworlds__jar__1_1-alpha-2
, plexus__plexus-utils__jar__1_0_2
, org_codehaus_plexus__plexus-interactivity-api__pom__1_0-alpha-4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.0-alpha-4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.0-alpha-4/plexus-interactivity-api-1.0-alpha-4.jar";
      sha256 = "4f60eb379f93d8b616bc3b4d299f466bc54fcced959f7ad082dae78b89d6a3f0";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-7;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = plexus__plexus-utils__jar__1_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__pom__1_0-alpha-4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
