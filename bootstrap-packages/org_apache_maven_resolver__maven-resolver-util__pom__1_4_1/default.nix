{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver__pom__1_4_1
}:
patchMavenJar {
  name = "maven-resolver-util";
  coordinates = "org.apache.maven.resolver:maven-resolver-util:pom:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.4.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.pom";
      sha256 = "a58c932e967e85e7bcb8d4adaedd14a5221a1750a1d089c5086c4d73df505155";
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
