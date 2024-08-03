{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_5
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-30
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-30";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-30";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-30/plexus-container-default-1.0-alpha-30.jar";
      sha256 = "ef5fa49aeb90df9cac923435577dc9c2701a18ba29191b6e407e7870795eea35";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
