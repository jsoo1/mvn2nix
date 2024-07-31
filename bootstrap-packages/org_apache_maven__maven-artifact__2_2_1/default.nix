{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
, org_apache__apache__pom__5
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/2.2.1/maven-artifact-2.2.1.jar";
        sha256 = "d53062ffe8677a4f5e1ad3a1d1fa37ed600fab39166d39be7ed204635c5f839b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/2.2.1/maven-artifact-2.2.1.pom";
        sha256 = "f658a628efd6e0efe416b977638ba144af660fe6413f3637a4d03feb6a1ce806";
      };
    }
  ];
  dependencies = [
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
