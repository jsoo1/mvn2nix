{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-cache-fs:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-cache-fs";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-cache-fs/1.0.0-alpha-2/mercury-repo-cache-fs-1.0.0-alpha-2.pom";
      sha256 = "0ede9c5db002f095e6747aae875d0dc2aa8d23d3ea77e0856c6c164603d2d182";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
