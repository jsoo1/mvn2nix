{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache__apache__pom__31
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:69";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "69";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/69/commons-parent-69.pom";
      sha256 = "d50da9c39bdca823d618d1b4a03b73f196497fcb8616fd0da727c8623592a9bb";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
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
