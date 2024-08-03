{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__13
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:23";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "23";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/23/maven-parent-23.pom";
      sha256 = "5425501edd9e0bd7b01eca53cc92e06836d24851151304f9c6759e1713541685";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
