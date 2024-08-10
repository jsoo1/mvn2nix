{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache__apache__pom__29
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:58";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "58";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/58/commons-parent-58.pom";
      sha256 = "2d4b12e18899063abd7c75278b5fa97a3729d80878ceecb6a40d946e9c0d5590";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
