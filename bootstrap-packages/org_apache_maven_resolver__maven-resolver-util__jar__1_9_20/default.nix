{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-util__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-util:jar:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.9.20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.9.20/maven-resolver-util-1.9.20.jar";
      sha256 = "b869aca6c208d2b1fc92e846e1c13612a5ed2fda3bed9a7c1ae2ff5f14f8cf48";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
