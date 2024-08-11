{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_4_1
, org_apache_maven_resolver__maven-resolver-util__pom__1_4_1
}:
patchMavenJar {
  name = "maven-resolver-util";
  coordinates = "org.apache.maven.resolver:maven-resolver-util:jar:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.4.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.jar";
      sha256 = "6b2184872fa7cc2ef5a90481b56af9711c15b371e69ab52f0f31bf24e910dd82";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__pom__1_4_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
