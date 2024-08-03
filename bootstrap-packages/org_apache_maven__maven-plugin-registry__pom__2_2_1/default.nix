{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-registry:pom:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-registry";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-registry/2.2.1/maven-plugin-registry-2.2.1.pom";
      sha256 = "3db15325cd620c0e54c3d88b6b7ec1bac43db376e18c9bf56bd0c05402ee6be8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
