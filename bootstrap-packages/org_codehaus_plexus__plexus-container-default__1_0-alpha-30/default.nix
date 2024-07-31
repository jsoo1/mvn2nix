{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__1_4_5
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-9
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-30
, org_codehaus_plexus__plexus__pom__1_0_11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:1.0-alpha-30";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-30";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-30/plexus-container-default-1.0-alpha-30.jar";
        sha256 = "ef5fa49aeb90df9cac923435577dc9c2701a18ba29191b6e407e7870795eea35";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-30/plexus-container-default-1.0-alpha-30.pom";
        sha256 = "8858248de2cab772fa26741b8972137058a6f4457b0a2b3e7cd8771d03d9373b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__1_4_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__1_2-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-30;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
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
