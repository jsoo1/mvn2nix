{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-failsafe-plugin:pom:3.0.0-M5";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-failsafe-plugin";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-failsafe-plugin/3.0.0-M5/maven-failsafe-plugin-3.0.0-M5.pom";
      sha256 = "8db83a0433b00566a4d45821885380142fb27ab6875ed8074f94de4509bba834";
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
