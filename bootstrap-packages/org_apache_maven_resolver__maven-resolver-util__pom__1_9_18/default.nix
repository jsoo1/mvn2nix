{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver__pom__1_9_18
}:
patchMavenJar {
  name = "maven-resolver-util";
  coordinates = "org.apache.maven.resolver:maven-resolver-util:pom:1.9.18";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.9.18";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.9.18/maven-resolver-util-1.9.18.pom";
      sha256 = "a98e6af5cdf1b2456486ae0bb8128e52fee8d6996629af60606bbc9c1aadf8ec";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_9_18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
