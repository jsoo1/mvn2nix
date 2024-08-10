{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-impl:pom:3.2.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-impl";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.pom";
      sha256 = "aee0681c3ad54ac802ff84b5b604e4e844644b5393653b7b63a651cd15215e64";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
