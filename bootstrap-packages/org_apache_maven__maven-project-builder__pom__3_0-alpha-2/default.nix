{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-project-builder:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-project-builder";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project-builder/3.0-alpha-2/maven-project-builder-3.0-alpha-2.pom";
      sha256 = "392f9bcc7eb6d9ab85b693cda0c3ba698fc770d32843491c8815b87f40fe02a8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
