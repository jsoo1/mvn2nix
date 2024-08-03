{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_2_5
, org_apache_maven__maven-model-builder__jar__3_2_5
, org_codehaus_plexus__plexus-interpolation__jar__1_21
, org_apache_maven__maven-repository-metadata__jar__3_2_5
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-spi__jar__1_0_0_v20140518
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_aether__aether-impl__jar__1_0_0_v20140518
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-aether-provider__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-aether-provider:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-aether-provider";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.2.5/maven-aether-provider-3.2.5.jar";
      sha256 = "703944b922d5351aad53b842f7dd38439b7213425f13c6c7f034b8b699b7d578";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_21;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
