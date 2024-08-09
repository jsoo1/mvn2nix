{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-providers:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-providers";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-providers/3.0.0-M5/surefire-providers-3.0.0-M5.pom";
      sha256 = "6d7d667c090e6111b7152d84753eb0ac14719c1d1b743e0de8a10f6b7636f781";
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
