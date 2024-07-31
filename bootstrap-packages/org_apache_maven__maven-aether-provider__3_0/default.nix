{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, org_apache_maven__maven-repository-metadata__3_0
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-impl__1_7
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_apache_maven__maven-model-builder__3_0
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_sonatype_aether__aether-spi__1_7
, org_apache_maven__maven__pom__3_0
, org_sonatype_aether__aether-api__1_7
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-aether-provider:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-aether-provider";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.0/maven-aether-provider-3.0.jar";
        sha256 = "1205a1f229999170dcadcfb885a278ad0bc2295540a251f4c438f887ead7bbd9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.0/maven-aether-provider-3.0.pom";
        sha256 = "755c07a1ae47cff80f633265b224341d6d8cc26f02d37eb407bc45ff5db9a71d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-model__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-util__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-impl__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-spi__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-api__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
