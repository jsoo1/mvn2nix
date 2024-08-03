{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-plexus:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-plexus";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-plexus/1.0.0-alpha-2/mercury-plexus-1.0.0-alpha-2.pom";
      sha256 = "b5ab0c749e45ef9899c3a26e2d53d1d3979f4358fda5eededf656df5059a989e";
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
