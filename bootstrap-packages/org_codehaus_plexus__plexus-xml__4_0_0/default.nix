{
  lib
, pkgs
, patchMavenJar
, javax_annotation__javax_annotation-api__1_2
, org_codehaus_plexus__plexus__pom__13
, org_apache_maven__maven-api-xml__4_0_0-alpha-5
, org_eclipse_sisu__org_eclipse_sisu_plexus__0_3_5
, org_codehaus_plexus__plexus-utils__3_0_24
, org_apache_maven__maven-xml-impl__4_0_0-alpha-5
, org_codehaus_plexus__plexus-classworlds__2_5_2
, org_apache_maven__maven-api-meta__4_0_0-alpha-5
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-xml:4.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-xml";
  version = "4.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/4.0.0/plexus-xml-4.0.0.jar";
        sha256 = "3843debddeed2bf7f9264f8c89d017bc4930e8432aa2e665fde5949805e051c7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/4.0.0/plexus-xml-4.0.0.pom";
        sha256 = "a4c4ee160dd998aa5cd1a0849f09b5bda47bd1a2ed90abad49dac41904f5679d";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_annotation__javax_annotation-api__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__13;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-api-xml__4_0_0-alpha-5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__0_3_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_24;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-xml-impl__4_0_0-alpha-5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_5_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-api-meta__4_0_0-alpha-5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
