{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_5
, org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1
, org_codehaus_plexus__plexus-classworlds__jar__1_3
, org_apache_xbean__xbean-reflect__jar__3_4
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__3_8_2
, org_codehaus_plexus__plexus-lang__pom__1_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-lang:jar:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-lang";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-lang/1.1/plexus-lang-1.1.jar";
      sha256 = "69c52f4003d26057860fe4732d10099c0e7436e00e8b6bcc69086d2d8d1db4d7";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_3;
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
      drv = org_codehaus_plexus__plexus-lang__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
