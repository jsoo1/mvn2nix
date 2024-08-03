{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-spi:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-spi";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-spi/3.0.0-M5/surefire-extensions-spi-3.0.0-M5.pom";
      sha256 = "1d85d5dc426d235d043b6a7a1e657fa77b395de51aa6688b0a2bf3c70b9229b5";
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
