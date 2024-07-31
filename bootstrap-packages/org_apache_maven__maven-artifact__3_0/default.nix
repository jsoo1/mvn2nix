{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.0/maven-artifact-3.0.jar";
        sha256 = "759079b9cf0cddae5ba06c96fd72347d82d0bc1d903c95d398c96522b139e470";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.0/maven-artifact-3.0.pom";
        sha256 = "c56a0dbd90cea691f83e58fa9a6388fb3ac6bc3c14b8c04d2e112544651fa528";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
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
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
