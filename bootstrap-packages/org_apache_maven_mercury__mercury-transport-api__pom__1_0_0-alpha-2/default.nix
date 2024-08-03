{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-transport__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-transport-api:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-transport-api";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-transport-api/1.0.0-alpha-2/mercury-transport-api-1.0.0-alpha-2.pom";
      sha256 = "4a27d1f00f7392b30e1edd47131392600a53d08937350c119dae8ad22f15525d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-transport__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
