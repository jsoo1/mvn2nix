{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-artifact__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.1.0/maven-artifact-3.1.0.jar";
      sha256 = "7f8a8ca4b2df5f81918fab2b9231a008f470d88ec54ddcbe38474bbf21b7571e";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
