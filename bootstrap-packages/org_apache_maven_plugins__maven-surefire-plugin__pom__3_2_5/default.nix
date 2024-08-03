{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_apache_maven_surefire__surefire__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-surefire-plugin:pom:3.2.5";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-surefire-plugin";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-surefire-plugin/3.2.5/maven-surefire-plugin-3.2.5.pom";
      sha256 = "284c61ddc929bbc9eeba3c8c11213f1f0f7bf0f8aa558067e0f9be3b90c8ddc0";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
