{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-booter:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-booter";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-booter/3.0.0-M5/surefire-booter-3.0.0-M5.pom";
      sha256 = "14c0ce0e92b56f149b348a3e08a6d7142ac00fd0df90d0ec501a624f59e86098";
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
