{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_apache__apache__pom__5
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-parameter-documenter:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-parameter-documenter";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-parameter-documenter/2.2.1/maven-plugin-parameter-documenter-2.2.1.jar";
        sha256 = "d87645908695bd18375b77b9149741a9309521f9e13a872d5aa6bcdf361d0226";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-parameter-documenter/2.2.1/maven-plugin-parameter-documenter-2.2.1.pom";
        sha256 = "902b0160f7b81ec76452468f8ae087fc1cfefc08367c84d9197512dfb01d845d";
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
