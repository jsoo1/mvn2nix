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
  name = "org.apache.maven:maven-repository-metadata:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.0/maven-repository-metadata-3.0.jar";
        sha256 = "c938e4d8cdf0674496749a87e6d3b29aa41b1b35a39898a1ade2bc9eae214c17";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.0/maven-repository-metadata-3.0.pom";
        sha256 = "8d9ce34e4bc02c4df761578c5f48ac3da5af51f259f5e3e4ea9047ec345ed1b7";
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
