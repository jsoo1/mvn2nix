{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_apache_maven__maven-artifact__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/2.2.1/maven-artifact-2.2.1.jar";
      sha256 = "d53062ffe8677a4f5e1ad3a1d1fa37ed600fab39166d39be7ed204635c5f839b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
