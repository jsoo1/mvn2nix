{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_5
, org_codehaus_plexus__plexus-classworlds__jar__1_4
, org_apache_xbean__xbean-reflect__jar__3_4
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__3_8_2
, org_codehaus_plexus__plexus-container-default__pom__1_0-beta-3_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:jar:1.0-beta-3.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-beta-3.0.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-beta-3.0.5/plexus-container-default-1.0-beta-3.0.5.jar";
      sha256 = "00aa0be06a029e4b45032f682089d5052b014c028f9187f83c70adc073672c46";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = log4j__log4j__jar__1_2_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_google-collections__google-collect__jar__snapshot-20080530;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__pom__1_0-beta-3_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
