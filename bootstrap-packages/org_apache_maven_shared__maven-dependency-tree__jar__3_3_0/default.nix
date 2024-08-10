{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-util__jar__1_4_1
, org_apache_maven_resolver__maven-resolver-api__jar__1_4_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_shared__maven-dependency-tree__pom__3_3_0
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-tree:jar:3.3.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-tree";
  version = "3.3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.jar";
      sha256 = "a3353f6a82feb950d5e7e64b0cd4ceadea7eb62112e447172e34974a510316f4";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-dependency-tree__pom__3_3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
