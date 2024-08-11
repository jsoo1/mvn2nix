{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__pom__1_9_18
}:
patchMavenJar {
  name = "maven-resolver-api";
  coordinates = "org.apache.maven.resolver:maven-resolver-api:jar:1.9.18";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.9.18";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.9.18/maven-resolver-api-1.9.18.jar";
      sha256 = "ebfb9e1dfeea3c2017905184581e007874b4eaac9d28bfffcfe5133d70ac6339";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__pom__1_9_18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
