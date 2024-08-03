{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_0-alpha-2
, org_codehaus_plexus__plexus-utils__jar__1_5_6
, org_codehaus_plexus__plexus-interpolation__jar__1_1
, org_apache_maven__maven-compat__jar__3_0-alpha-2
, org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_5
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-4
, org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_5
, org_codehaus_plexus__plexus-classworlds__jar__1_3
, org_apache_xbean__xbean-reflect__jar__3_4
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__3_8_2
, org_codehaus_woodstox__wstx-asl__jar__3_2_6
, stax__stax-api__jar__1_0_1
, org_sonatype_spice__model-builder__jar__1_3
, org_apache_maven__maven-project-builder__jar__3_0-alpha-2
, org_apache_maven__maven-project__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-project:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-project";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project/3.0-alpha-2/maven-project-3.0-alpha-2.jar";
      sha256 = "0b76d82011452170dddd21fb33da6bfc414ff6629fce6219fbf1d78ce1518e90";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-compat__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_5;
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
      drv = org_codehaus_woodstox__wstx-asl__jar__3_2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = stax__stax-api__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_spice__model-builder__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project-builder__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
