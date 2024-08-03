{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_apache_maven__maven-repository-metadata__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.0/maven-repository-metadata-3.0.jar";
      sha256 = "c938e4d8cdf0674496749a87e6d3b29aa41b1b35a39898a1ade2bc9eae214c17";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
