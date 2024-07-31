{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__1_3
, org_codehaus_plexus__plexus__pom__1_0_10
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20
, org_codehaus_plexus__plexus-component-api__1_0-alpha-19
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-7
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:1.0-alpha-20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-20/plexus-container-default-1.0-alpha-20.jar";
        sha256 = "bd6d7ab2535203b67d520151c64583f887cbd87ffa17704b836a8a88fa28b113";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-20/plexus-container-default-1.0-alpha-20.pom";
        sha256 = "5fe611b07793d5ff3378ca3ae2c75e38bae08e73c3ae0acdf116ae5d6978d19f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-api__1_0-alpha-19;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__1_2-alpha-7;
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
