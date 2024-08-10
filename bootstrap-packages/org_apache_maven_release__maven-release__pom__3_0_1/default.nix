{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.release:maven-release:pom:3.0.1";
  groupId = "org.apache.maven.release";
  artifactId = "maven-release";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/release/maven-release/3.0.1/maven-release-3.0.1.pom";
      sha256 = "59e4445f3cb3037cdd61ed3c8f4bf1ea065df31f7cd5372cd2883bdf8cde74c8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
