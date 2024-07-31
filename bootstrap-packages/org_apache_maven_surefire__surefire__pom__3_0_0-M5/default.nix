{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire/3.0.0-M5/surefire-3.0.0-M5.pom";
        sha256 = "125ec88d3c4a8b18ca5fb755d2d40f9eca07a3ca2e3a5ac31d6ce3d9fc92a3b0";
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
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
