{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-logger-api__jar__3_2_5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5
, org_apache_maven_surefire__surefire-api__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-api:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-api";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-api/3.2.5/surefire-api-3.2.5.jar";
      sha256 = "20a4b458d9f6d93223d6bb906c61032fa66925f9e867a0d6762d35bc0b528bb9";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-logger-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-api__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
