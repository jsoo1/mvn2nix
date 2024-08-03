{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:41";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "41";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/41/maven-parent-41.pom";
      sha256 = "762fcdd4ce8621c5fa0a2cf6495ad26972a8093eb432aa3e402bc2d4e2500c53";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
