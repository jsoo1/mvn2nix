{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_0
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_apache_maven__maven-artifact__jar__3_0
, org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_codehaus_plexus__plexus-classworlds__jar__2_2_3
, org_sonatype_sisu__sisu-inject-bean__jar__1_4_2
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, org_apache_maven__maven-plugin-api__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.0/maven-plugin-api-3.0.jar";
      sha256 = "f5ecc6eaa4a32ee0c115d31525f588f491b2cc75fdeb4ed3c0c662c12ac0c32f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
