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
  name = "org.codehaus.plexus:plexus-container-default:1.0-alpha-9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-9";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9/plexus-container-default-1.0-alpha-9.jar";
        sha256 = "dccfc47a4245e2d648e3bdeadb7a4daf51efc70fbd8b7b456454377c9cc5584a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9/plexus-container-default-1.0-alpha-9.pom";
        sha256 = "8864b08e353614d0c4111f455f8b3907179f8b0be6c0845bc7f31ef6daf206ec";
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
