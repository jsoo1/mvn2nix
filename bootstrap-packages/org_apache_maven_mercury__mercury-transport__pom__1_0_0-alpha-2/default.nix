{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-transport:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-transport";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-transport/1.0.0-alpha-2/mercury-transport-1.0.0-alpha-2.pom";
      sha256 = "d3b1335ff19bc238bca00db1769bab3c2cac870f1036f963db55d9774e3f469b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
