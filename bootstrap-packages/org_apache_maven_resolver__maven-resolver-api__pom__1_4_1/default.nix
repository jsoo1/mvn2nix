{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver__pom__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-api:pom:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.4.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.pom";
      sha256 = "335513ce1dd2cf4c7d1dbfa1b8aa14656d9be5f9f3f0d0875ac528893c9f0f06";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_4_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
