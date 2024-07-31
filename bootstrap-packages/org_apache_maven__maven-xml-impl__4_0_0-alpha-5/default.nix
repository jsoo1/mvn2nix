{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__2_1_0
, org_apache__apache__pom__29
, org_codehaus_plexus__plexus-classworlds__2_6_0
, org_apache_maven__maven-api-xml__4_0_0-alpha-5
, org_eclipse_sisu__org_eclipse_sisu_plexus__0_3_5
, org_codehaus_plexus__plexus-utils__3_5_0
, javax_annotation__javax_annotation-api__1_3_2
, org_apache_maven__maven__pom__4_0_0-alpha-5
, org_apache_maven__maven-api-meta__4_0_0-alpha-5
, org_apache_maven__maven-parent__pom__39
, org_eclipse_sisu__org_eclipse_sisu_inject__0_3_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-xml-impl:4.0.0-alpha-5";
  groupId = "org.apache.maven";
  artifactId = "maven-xml-impl";
  version = "4.0.0-alpha-5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-xml-impl/4.0.0-alpha-5/maven-xml-impl-4.0.0-alpha-5.jar";
        sha256 = "fa7d0d05a262976947e95f72c7e2a3300b8eebe2a6b33eb4080043cddaa13854";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-xml-impl/4.0.0-alpha-5/maven-xml-impl-4.0.0-alpha-5.pom";
        sha256 = "84f756432bc40cd429be3e20afca9daa24e9a9666553ac910734c98b44997a06";
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
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_6_0;
      scope = "compile";
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
      drv = org_codehaus_plexus__plexus-utils__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_annotation__javax_annotation-api__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__4_0_0-alpha-5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-api-meta__4_0_0-alpha-5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
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
