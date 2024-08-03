{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-crypto__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-crypto-basic:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-crypto-basic";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-crypto-basic/1.0.0-alpha-2/mercury-crypto-basic-1.0.0-alpha-2.pom";
      sha256 = "a261e3af60e31f944218be98dc14825161949c36fad2b551cbb227f2fadcf0c7";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-crypto__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
