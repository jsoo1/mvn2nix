{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-util__1_4_1
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, javax_inject__javax_inject__1
, org_apache_maven_shared__maven-shared-components__pom__42
, org_apache_maven_resolver__maven-resolver-api__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-tree:3.3.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-tree";
  version = "3.3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.jar";
        sha256 = "a3353f6a82feb950d5e7e64b0cd4ceadea7eb62112e447172e34974a510316f4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.pom";
        sha256 = "06d3cdd58a0bcec206558ade256147aade63a166b042ef53215df6c51206d920";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_4_1;
      scope = "compile";
      optional = false;
    }
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
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_4_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
