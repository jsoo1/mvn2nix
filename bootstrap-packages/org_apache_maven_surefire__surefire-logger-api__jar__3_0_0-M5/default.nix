{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-logger-api__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-logger-api:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-logger-api";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-logger-api/3.0.0-M5/surefire-logger-api-3.0.0-M5.jar";
      sha256 = "739627f1ecb7b2253e5900c01d7c734187707034978a8aa35f6758abc0dc76f8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-logger-api__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
