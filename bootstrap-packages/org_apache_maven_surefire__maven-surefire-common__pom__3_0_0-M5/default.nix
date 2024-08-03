{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:maven-surefire-common:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "maven-surefire-common";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/maven-surefire-common/3.0.0-M5/maven-surefire-common-3.0.0-M5.pom";
      sha256 = "95ead013bfd67e469a484a71dfaba25381314a63d9b4b7714e06ca90e0d07c7b";
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
