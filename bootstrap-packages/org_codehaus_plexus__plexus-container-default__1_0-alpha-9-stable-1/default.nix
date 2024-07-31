{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__1_0_4
, org_codehaus_plexus__plexus-containers__pom__1_0_3
, org_codehaus_plexus__plexus__pom__1_0_4
, classworlds__classworlds__1_1-alpha-2
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-9-stable-1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9-stable-1/plexus-container-default-1.0-alpha-9-stable-1.jar";
        sha256 = "7c758612888782ccfe376823aee7cdcc7e0cdafb097f7ef50295a0b0c3a16edf";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9-stable-1/plexus-container-default-1.0-alpha-9-stable-1.pom";
        sha256 = "ef71d45a49edfe76be0f520312a76bc2aae73ec0743a5ffffe10d30122c6e2b2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_4;
      scope = "test";
      optional = false;
    }
    {
      drv = classworlds__classworlds__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
