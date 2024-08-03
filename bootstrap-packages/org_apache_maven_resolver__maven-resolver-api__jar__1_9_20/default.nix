{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-api:jar:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.9.20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.9.20/maven-resolver-api-1.9.20.jar";
      sha256 = "dee92eda1cd293afbbbb0ee3d752f8c135e193e2232172e036a3f23e38c8c25d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
