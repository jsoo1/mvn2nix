{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven_scm__maven-scm-api__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-api";
  coordinates = "org.apache.maven.scm:maven-scm-api:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-api";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-api/2.0.0/maven-scm-api-2.0.0.jar";
      sha256 = "687a773ba4a9dbe27f822b0bf82df2807a0259b5dfbac4c11d3cae90707aa63c";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
