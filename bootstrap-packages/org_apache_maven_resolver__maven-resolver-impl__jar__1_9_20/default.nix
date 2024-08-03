{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_20
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_resolver__maven-resolver-impl__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-impl:jar:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-impl";
  version = "1.9.20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-impl/1.9.20/maven-resolver-impl-1.9.20.jar";
      sha256 = "55672351fa78c1004188944ef874c21b924c32b1333a834ebebf65c3c499739b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-impl__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
