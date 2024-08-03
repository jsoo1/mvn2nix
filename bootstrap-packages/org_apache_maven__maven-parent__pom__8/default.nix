{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:8";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/8/maven-parent-8.pom";
      sha256 = "3cb6712f827c80dc6b0b0b967776dba451c023a92b7741bba45d23ab7a83281a";
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
