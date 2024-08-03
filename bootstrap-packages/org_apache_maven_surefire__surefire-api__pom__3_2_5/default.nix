{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_maven_surefire__surefire__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-api:pom:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.2.5/surefire-api-3.2.5.pom";
      sha256 = "d0625e4a3f88a2fa680f278845f2ab08c9fbd3c2261e6b26e8b6b8a0dfda16f6";
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
