{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_resolver__maven-resolver__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-named-locks:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-named-locks";
  version = "1.9.20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-named-locks/1.9.20/maven-resolver-named-locks-1.9.20.jar";
        sha256 = "6d0725edfc618555bb70509865307287b80820438a327f778dbe8d6f8e26417d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-named-locks/1.9.20/maven-resolver-named-locks-1.9.20.pom";
        sha256 = "335d771892bc83ddafc8f31c1e02a8434fb0ff1863f1fcff604f8eaa30326c86";
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
      drv = org_apache_maven_resolver__maven-resolver__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
