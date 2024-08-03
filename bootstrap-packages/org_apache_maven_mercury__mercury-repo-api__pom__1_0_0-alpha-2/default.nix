{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-api:pom:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-api";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-api/1.0.0-alpha-2/mercury-repo-api-1.0.0-alpha-2.pom";
      sha256 = "1192788dab7fc1513728d1eefe77c6ae8d218002374db58495428ce7961ef65e";
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
