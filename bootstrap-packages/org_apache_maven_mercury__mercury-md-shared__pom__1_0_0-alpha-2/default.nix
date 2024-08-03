{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-md__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-md-shared:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-md-shared";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-md-shared/1.0.0-alpha-2/mercury-md-shared-1.0.0-alpha-2.pom";
      sha256 = "21e43dd206e1968e30fcd10db06f2190877e22300764e2e625d1f1d3704da006";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-md__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
