{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_apache_maven_surefire__surefire-extensions-spi__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-spi:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-spi";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-spi/3.0.0-M5/surefire-extensions-spi-3.0.0-M5.jar";
      sha256 = "1309a1c4a68e90d1abcdb2355ca3124d238cd07f1f4d5ad29ea7671fc4df47bb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-spi__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
