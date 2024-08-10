{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_release__maven-release__pom__3_0_1
}:
patchMavenJar {
  name = "org.apache.maven.release:maven-release-manager:pom:3.0.1";
  groupId = "org.apache.maven.release";
  artifactId = "maven-release-manager";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/release/maven-release-manager/3.0.1/maven-release-manager-3.0.1.pom";
      sha256 = "7334ce6584173b1a96c35f522727912d64372c5b0b02b360491cbbf0ef1f6425";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_release__maven-release__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
