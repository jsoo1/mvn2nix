{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-api:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-api";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.0.0-M5/surefire-api-3.0.0-M5.pom";
      sha256 = "316959873e9d8ca83c5a66228a68c65508388550067bc77a98645b4a1046d9bd";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
