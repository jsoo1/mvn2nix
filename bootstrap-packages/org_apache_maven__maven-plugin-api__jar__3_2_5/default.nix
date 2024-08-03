{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_2_5
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-artifact__jar__3_2_5
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_3_0_M1
, javax_enterprise__cdi-api__jar__1_0
, javax_annotation__jsr250-api__jar__1_0
, javax_inject__javax_inject__jar__1
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-classworlds__jar__2_5_2
, org_apache_maven__maven-plugin-api__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.2.5/maven-plugin-api-3.2.5.jar";
      sha256 = "194a6f0ce889ed3b0d8a9bc4d3c79541e878098b7e303e4ac76c1031850772c3";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_3_0_M1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_annotation__jsr250-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_3_0_M1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_5_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
