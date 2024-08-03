{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-surefire-plugin:pom:3.0.0-M5";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-surefire-plugin";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-surefire-plugin/3.0.0-M5/maven-surefire-plugin-3.0.0-M5.pom";
      sha256 = "8c61a4eea9bd5b3bc9d96843ede772c0537bede17ed9b4a68e1e8ca4e839d0c8";
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
