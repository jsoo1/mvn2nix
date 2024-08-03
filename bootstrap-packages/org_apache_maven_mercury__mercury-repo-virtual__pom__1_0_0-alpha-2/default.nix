{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-virtual:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-virtual";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-virtual/1.0.0-alpha-2/mercury-repo-virtual-1.0.0-alpha-2.pom";
      sha256 = "32d1a12c591c0a5c817b84a18d8e424ef476a0f8e68fa0f39e82314c9eb373b7";
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
