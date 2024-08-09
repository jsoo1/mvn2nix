{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-providers__pom__3_0_0-M5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire-junit-platform:pom:3.0.0-M5";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire-junit-platform";
  version = "3.0.0-M5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire-junit-platform/3.0.0-M5/surefire-junit-platform-3.0.0-M5.pom";
      sha256 = "7432ca7c7dfa5a68fb6b6f88ce095185d4e92aaa89108c650153b4c9236f50e1";
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
