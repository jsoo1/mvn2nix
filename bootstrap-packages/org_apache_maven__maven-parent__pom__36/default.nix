{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__26
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:36";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "36";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/36/maven-parent-36.pom";
      sha256 = "fcc3ab64c3cc80966d562a9aa604d8c280b3b7092441dd09e5290b081dfbedb5";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__26;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
