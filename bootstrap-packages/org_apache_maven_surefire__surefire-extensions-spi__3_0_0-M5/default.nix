{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire-api__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4
, org_apache_maven_surefire__surefire-logger-api__3_0_0-M5
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-spi:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-spi";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-spi/3.0.0-M5/surefire-extensions-spi-3.0.0-M5.jar";
        sha256 = "1309a1c4a68e90d1abcdb2355ca3124d238cd07f1f4d5ad29ea7671fc4df47bb";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-spi/3.0.0-M5/surefire-extensions-spi-3.0.0-M5.pom";
        sha256 = "1d85d5dc426d235d043b6a7a1e657fa77b395de51aa6688b0a2bf3c70b9229b5";
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
      drv = org_apache_maven_surefire__surefire-api__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__3_0_0-M5;
      scope = "compile";
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
