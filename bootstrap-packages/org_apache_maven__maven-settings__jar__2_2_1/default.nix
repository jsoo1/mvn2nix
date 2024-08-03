{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__2_2_1
, org_codehaus_plexus__plexus-interpolation__jar__1_11
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, classworlds__classworlds__jar__1_1
, org_apache_maven__maven-settings__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/2.2.1/maven-settings-2.2.1.jar";
      sha256 = "9a9f556713a404e770c9dbdaed7eb086078014c989291960c76fdde6db4192f7";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
