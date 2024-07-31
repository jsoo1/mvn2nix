{
  lib
, pkgs
, patchMavenJar
, com_google_collections__google-collections__1_0
, org_codehaus_plexus__plexus-containers__pom__2_1_0
, org_codehaus_plexus__plexus-utils__3_1_1
, org_apache_xbean__xbean-reflect__3_7
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "2.1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/2.1.0/plexus-container-default-2.1.0.jar";
        sha256 = "6dceb1246b188153bdcb6f962d543d51ddb672cca07cad94a78fbabc9edf0a39";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/2.1.0/plexus-container-default-2.1.0.pom";
        sha256 = "8b8c20e630bdcc795cc985024c4c1045c147be116052c2c975e30c608f7f3b45";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_collections__google-collections__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_1_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
