{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-event:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-event";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-event/1.0.0-alpha-2/mercury-event-1.0.0-alpha-2.pom";
      sha256 = "d2a2648be0eafb02ccfbd4cb15f3f10a51a71463327e04ab63e2629a9b1f75fe";
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
