{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_maven_surefire__surefire__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-logger-api:pom:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-logger-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-logger-api/3.2.5/surefire-logger-api-3.2.5.pom";
      sha256 = "d14b0f073e7d5d7b051f4bea853b9c921cd6f4301e2b148f66a7108210504dc8";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
