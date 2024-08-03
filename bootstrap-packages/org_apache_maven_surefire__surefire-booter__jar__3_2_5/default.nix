{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_2_5
, org_apache_maven_surefire__surefire-logger-api__jar__3_2_5
, org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5
, org_apache_maven_surefire__surefire-extensions-spi__jar__3_2_5
, org_apache_maven_surefire__surefire-booter__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-booter:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-booter";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-booter/3.2.5/surefire-booter-3.2.5.jar";
      sha256 = "830ff373fad31d246ef5162333f3153d28c744fd95b05a572eb3be4cfb463e96";
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
      drv = org_apache_maven_surefire__surefire-extensions-spi__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-booter__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
