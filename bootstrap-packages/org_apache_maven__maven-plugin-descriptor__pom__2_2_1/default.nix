{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-descriptor:pom:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-descriptor";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-descriptor/2.2.1/maven-plugin-descriptor-2.2.1.pom";
      sha256 = "d4ef608f90dc9599c0cc325ca2ccc2e1ceb439b3d2ff31ae22e30ac1a63a68f0";
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
