{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, org_apache_maven_resolver__maven-resolver-named-locks__1_9_20
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_resolver__maven-resolver-spi__1_9_20
, org_apache_maven_resolver__maven-resolver-util__1_9_20
, org_apache_maven_resolver__maven-resolver__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-impl:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-impl";
  version = "1.9.20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-impl/1.9.20/maven-resolver-impl-1.9.20.jar";
        sha256 = "55672351fa78c1004188944ef874c21b924c32b1333a834ebebf65c3c499739b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-impl/1.9.20/maven-resolver-impl-1.9.20.pom";
        sha256 = "51e51d70f9d35d3bd417a9ccab793625901b477cc6a1f539b1cb4de13cde1c0d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
