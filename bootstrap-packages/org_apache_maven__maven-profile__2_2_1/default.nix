{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_codehaus_plexus__plexus-interpolation__1_11
, org_apache__apache__pom__5
, org_apache_maven__maven-model__2_2_1
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-profile:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-profile";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-profile/2.2.1/maven-profile-2.2.1.jar";
        sha256 = "ecaffef655fea6b138f0855a12f7dbb59fc0d6bffb5c1bfd31803cccb49ea08c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-profile/2.2.1/maven-profile-2.2.1.pom";
        sha256 = "d125b3ade9f694ae60ef835f5ae000b6ba35fba8c34bafd8b40a1961375e63fa";
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
      drv = org_codehaus_plexus__plexus-interpolation__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__2_2_1;
      scope = "compile";
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
