{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-remote-m2:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-remote-m2";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-remote-m2/1.0.0-alpha-2/mercury-repo-remote-m2-1.0.0-alpha-2.pom";
      sha256 = "5d47a2262c4a738bf338e7048c281f40e798f9d4f2d8cc4ba59efbfb2495a5b2";
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
