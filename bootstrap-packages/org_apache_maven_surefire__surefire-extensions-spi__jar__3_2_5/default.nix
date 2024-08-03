{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_2_5
, org_apache_maven_surefire__surefire-logger-api__jar__3_2_5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5
, org_apache_maven_surefire__surefire-extensions-spi__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-extensions-spi:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-extensions-spi";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-extensions-spi/3.2.5/surefire-extensions-spi-3.2.5.jar";
      sha256 = "af522c12a77f967e83cf243f9cfbb86217f01df66ebaa4690ad3cec1036d4c18";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
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
      drv = org_apache_maven_surefire__surefire-extensions-spi__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
