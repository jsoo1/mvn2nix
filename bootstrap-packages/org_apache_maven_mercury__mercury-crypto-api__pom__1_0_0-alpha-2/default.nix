{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-crypto__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-crypto-api:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-crypto-api";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-crypto-api/1.0.0-alpha-2/mercury-crypto-api-1.0.0-alpha-2.pom";
      sha256 = "d63dce280f39ce405af6c07dbdf357d6bca5cdd0eea370f70566586901cb7eea";
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
