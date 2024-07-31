{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-logger-api:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-logger-api";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-logger-api/3.0.0-M5/surefire-logger-api-3.0.0-M5.jar";
        sha256 = "739627f1ecb7b2253e5900c01d7c734187707034978a8aa35f6758abc0dc76f8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-logger-api/3.0.0-M5/surefire-logger-api-3.0.0-M5.pom";
        sha256 = "db64b7dc5d866b5e0ed850a9179e0aea55a801f3489efef9af2d4c91e13a2eec";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
