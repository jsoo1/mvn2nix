{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__15
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:25";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "25";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/25/maven-parent-25.pom";
        sha256 = "3e66146707bc76e9d5b6cd8c98cf77d931c0894e7955a8e7f104f6790769abf1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
