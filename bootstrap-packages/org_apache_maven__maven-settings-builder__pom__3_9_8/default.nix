{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.9.8/maven-settings-builder-3.9.8.pom";
      sha256 = "899a0236213ed3cb77cba634f17d490660f4631736762499d06c0f07e12c1e5d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
