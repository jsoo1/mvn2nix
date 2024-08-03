{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-transport__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-transport-http:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-transport-http";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-transport-http/1.0.0-alpha-2/mercury-transport-http-1.0.0-alpha-2.pom";
      sha256 = "3db4c4082b33b4d7da8030f3caef63ec4b2842cc7d3f8287b4744b3d63e4ee1b";
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
