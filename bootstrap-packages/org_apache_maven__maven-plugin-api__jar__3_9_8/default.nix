{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_9_8
, org_apache_maven__maven-artifact__jar__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M3
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3
, org_codehaus_plexus__plexus-component-annotations__jar__2_1_0
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_codehaus_plexus__plexus-classworlds__jar__2_8_0
, org_apache_maven__maven-plugin-api__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.9.8/maven-plugin-api-3.9.8.jar";
      sha256 = "ec0d41b3c6de899b202523373fdf8571d354f09052c17bf4230baa1ca1cd7936";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_8_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
