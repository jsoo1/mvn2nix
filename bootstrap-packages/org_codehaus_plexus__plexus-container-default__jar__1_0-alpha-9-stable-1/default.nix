{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-utils__jar__1_0_4
, classworlds__classworlds__jar__1_1-alpha-2
, org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-9-stable-1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-9-stable-1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-9-stable-1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9-stable-1/plexus-container-default-1.0-alpha-9-stable-1.jar";
      sha256 = "7c758612888782ccfe376823aee7cdcc7e0cdafb097f7ef50295a0b0c3a16edf";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-9-stable-1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
