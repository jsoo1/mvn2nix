{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_apache_maven_surefire__surefire-extensions-spi__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-booter__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-booter:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-booter";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-booter/3.0.0-M5/surefire-booter-3.0.0-M5.jar";
      sha256 = "1078a430b772a69e2736770cf0d76bcd2533c33157261f185de013d69f0585c9";
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
      drv = org_apache_maven_surefire__surefire-extensions-spi__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-booter__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
