{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-utils__jar__1_0_4
, classworlds__classworlds__jar__1_1-alpha-2
, org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-9
}:
patchMavenJar {
  name = "plexus-container-default";
  coordinates = "org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9/plexus-container-default-1.0-alpha-9.jar";
      sha256 = "dccfc47a4245e2d648e3bdeadb7a4daf51efc70fbd8b7b456454377c9cc5584a";
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
      drv = org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
