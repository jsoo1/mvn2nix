{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, org_apache_maven__maven-plugin-api__2_2_1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_apache_maven__maven-artifact__2_2_1
, org_apache__apache__pom__5
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-descriptor:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-descriptor";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-descriptor/2.2.1/maven-plugin-descriptor-2.2.1.jar";
        sha256 = "ea41346759cb042027a4f6f98996427ba0ecf72602b1c3ee925461ddd00266b4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-descriptor/2.2.1/maven-plugin-descriptor-2.2.1.pom";
        sha256 = "d4ef608f90dc9599c0cc325ca2ccc2e1ceb439b3d2ff31ae22e30ac1a63a68f0";
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
      drv = org_apache_maven__maven-plugin-api__2_2_1;
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
      drv = org_apache_maven__maven-artifact__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
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
