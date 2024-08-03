{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-logger-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-extensions-api__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-booter__jar__3_0_0-M5
, org_apache_maven_surefire__surefire-extensions-spi__jar__3_0_0-M5
, org_apache_maven__maven-toolchain__jar__3_0-alpha-2
, org_apache_maven_shared__maven-artifact-transfer__jar__0_11_0
, org_apache_maven_shared__maven-common-artifact-filters__jar__3_1_0
, org_apache_maven__maven-plugin-api__jar__3_0
, commons-codec__commons-codec__jar__1_11
, org_codehaus_plexus__plexus-java__jar__1_0_5
, org_ow2_asm__asm__jar__7_2
, com_thoughtworks_qdox__qdox__jar__2_0-M9
, org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4
, org_apache_maven_surefire__maven-surefire-common__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:maven-surefire-common:jar:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "maven-surefire-common";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/maven-surefire-common/3.0.0-M5/maven-surefire-common-3.0.0-M5.jar";
      sha256 = "ff20ecb3c9ed1eef654c3e05b52bbca4916613c52c7135cd11d9bec92a7175f9";
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
      drv = org_apache_maven_surefire__surefire-extensions-api__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-booter__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-spi__jar__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-toolchain__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-artifact-transfer__jar__0_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__jar__1_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__jar__7_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0-M9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_0_0-M4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__maven-surefire-common__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
