{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__2_1_0
, org_codehaus_plexus__plexus-classworlds__2_8_0
, org_apache_maven__maven__pom__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_plexus__0_9_0_M3
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven__maven-model__3_9_8
, org_apache_maven__maven-artifact__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3
, org_codehaus_plexus__plexus-xml__3_0_0
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.9.8/maven-plugin-api-3.9.8.jar";
        sha256 = "ec0d41b3c6de899b202523373fdf8571d354f09052c17bf4230baa1ca1cd7936";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.9.8/maven-plugin-api-3.9.8.pom";
        sha256 = "5adba4024d31466c40c699df48cbe03ffe6fc53628701c55abc81168e2f3cc1c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_8_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
