{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:9";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/9/maven-parent-9.pom";
      sha256 = "8e7054879496abff4f6960b946dbf67ab33671bf8c9b98bc154b7e0fb8bad5ae";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
