{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-local-m2:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-local-m2";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-local-m2/1.0.0-alpha-2/mercury-repo-local-m2-1.0.0-alpha-2.pom";
      sha256 = "8fb8d6701a1ba920abf654ba0b43c6adc4443b67c056af07dc383ae6d2771538";
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
