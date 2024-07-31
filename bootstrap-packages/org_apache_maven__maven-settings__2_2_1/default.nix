{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_codehaus_plexus__plexus-interpolation__1_11
, org_apache__apache__pom__5
, org_apache_maven__maven-model__2_2_1
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/2.2.1/maven-settings-2.2.1.jar";
        sha256 = "9a9f556713a404e770c9dbdaed7eb086078014c989291960c76fdde6db4192f7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/2.2.1/maven-settings-2.2.1.pom";
        sha256 = "0d25a88a1b1e44801f8912206a40ff249cb5702ee87cf3d243d5213f7bcf534f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
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
