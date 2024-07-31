{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-artifact-transfer__0_11_0
, org_apache_maven_surefire__surefire-api__3_0_0-M5
, org_apache_maven_surefire__surefire-shared-utils__3_0_0-M4
, commons-codec__commons-codec__1_11
, org_apache_maven_surefire__surefire-booter__3_0_0-M5
, org_apache_maven_surefire__surefire-extensions-api__3_0_0-M5
, org_ow2_asm__asm__7_2
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_codehaus_plexus__plexus-java__1_0_5
, com_thoughtworks_qdox__qdox__2_0-M9
, org_apache_maven_shared__maven-common-artifact-filters__3_1_0
, org_apache_maven_surefire__surefire-extensions-spi__3_0_0-M5
, org_apache_maven_surefire__maven-surefire-common__3_0_0-M5
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven__maven-toolchain__3_0-alpha-2
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_surefire__surefire-logger-api__3_0_0-M5
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-failsafe-plugin:3.0.0-M5";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-failsafe-plugin";
  version = "3.0.0-M5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-failsafe-plugin/3.0.0-M5/maven-failsafe-plugin-3.0.0-M5.jar";
        sha256 = "873ebaa1213e74b9dca5100a5eef3e73b6c641b781eb58c6071164b4cc088f3e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-failsafe-plugin/3.0.0-M5/maven-failsafe-plugin-3.0.0-M5.pom";
        sha256 = "8db83a0433b00566a4d45821885380142fb27ab6875ed8074f94de4509bba834";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-artifact-transfer__0_11_0;
      scope = "compile";
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
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-booter__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-api__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__7_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__1_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__2_0-M9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-spi__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__maven-surefire-common__3_0_0-M5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-toolchain__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__3_0_0-M5;
      scope = "compile";
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
