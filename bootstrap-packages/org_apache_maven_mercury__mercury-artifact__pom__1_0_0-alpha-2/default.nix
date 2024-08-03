{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-artifact:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-artifact";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-artifact/1.0.0-alpha-2/mercury-artifact-1.0.0-alpha-2.pom";
      sha256 = "b08bdf216fd49b1d740605032931d512846c30531c73b63e58c107b04f85e9dc";
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
