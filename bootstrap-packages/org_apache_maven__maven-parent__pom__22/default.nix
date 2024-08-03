{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__11
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:22";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "22";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/22/maven-parent-22.pom";
      sha256 = "165a409718070698b4eb18fdfee4325bc3361cbb8e96a35f4669982cd2adb79a";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
