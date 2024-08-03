{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:15";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/15/maven-parent-15.pom";
      sha256 = "e25770d5d46dcdfdbb9e38ca04f272c5bdf476d88392ab4044ba90678e616d54";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
