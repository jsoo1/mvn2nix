{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-extensions-spi__3_0_0-M5
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire-api__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4
, org_apache_maven_surefire__surefire-logger-api__3_0_0-M5
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-booter:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-booter";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-booter/3.0.0-M5/surefire-booter-3.0.0-M5.jar";
        sha256 = "1078a430b772a69e2736770cf0d76bcd2533c33157261f185de013d69f0585c9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-booter/3.0.0-M5/surefire-booter-3.0.0-M5.pom";
        sha256 = "14c0ce0e92b56f149b348a3e08a6d7142ac00fd0df90d0ec501a624f59e86098";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-extensions-spi__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
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
