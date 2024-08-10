{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__pom__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-api:jar:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.4.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.jar";
      sha256 = "33dc67306cc95da14e5444e8b494d967924abf1d01bae1894676164cbd3f6112";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__pom__1_4_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
