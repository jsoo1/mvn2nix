{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_1_1
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_apache_xbean__xbean-reflect__jar__3_7
, com_google_collections__google-collections__jar__1_0
, org_codehaus_plexus__plexus-container-default__pom__2_1_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:jar:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "2.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/2.1.0/plexus-container-default-2.1.0.jar";
      sha256 = "6dceb1246b188153bdcb6f962d543d51ddb672cca07cad94a78fbabc9edf0a39";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_collections__google-collections__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__pom__2_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
