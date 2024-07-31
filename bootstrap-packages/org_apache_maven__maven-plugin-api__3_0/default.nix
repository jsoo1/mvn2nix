{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, org_apache_maven__maven-artifact__3_0
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_apache_maven__maven__pom__3_0
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.0/maven-plugin-api-3.0.jar";
        sha256 = "f5ecc6eaa4a32ee0c115d31525f588f491b2cc75fdeb4ed3c0c662c12ac0c32f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.0/maven-plugin-api-3.0.pom";
        sha256 = "8a722af2564205ae996f9035cc04670d3e9e4ae592f5a643c58fb7b0f43e1501";
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
      drv = org_apache_maven__maven-artifact__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7__noaop;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__1_4_2;
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
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
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
