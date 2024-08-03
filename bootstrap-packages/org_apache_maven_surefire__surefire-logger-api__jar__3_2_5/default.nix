{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-logger-api__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-logger-api:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-logger-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-logger-api/3.2.5/surefire-logger-api-3.2.5.jar";
      sha256 = "da275c04bd08355403f987d83f6ecef1afa54e92864cb73ca6ec89cc062ed50d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-logger-api__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
