{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-providers__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:common-java5:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "common-java5";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/common-java5/3.0.0-M5/common-java5-3.0.0-M5.pom";
      sha256 = "7fb33fb24ff5aa986f5abd84f28a27f4aab5f90a9f92f573c57b08d6747aad2f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-providers__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
