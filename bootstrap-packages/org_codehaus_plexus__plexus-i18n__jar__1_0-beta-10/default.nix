{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_5
, org_codehaus_plexus__plexus-component-api__jar__1_0-alpha-20
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-i18n__pom__1_0-beta-10
}:
patchMavenJar {
  name = "plexus-i18n";
  coordinates = "org.codehaus.plexus:plexus-i18n:jar:1.0-beta-10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-i18n";
  version = "1.0-beta-10";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.jar";
      sha256 = "b87f25b512ffafcafbf4a05ab943812e9c6915291370c6b46016eb3836886c41";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-api__jar__1_0-alpha-20;
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
      drv = org_codehaus_plexus__plexus-i18n__pom__1_0-beta-10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
