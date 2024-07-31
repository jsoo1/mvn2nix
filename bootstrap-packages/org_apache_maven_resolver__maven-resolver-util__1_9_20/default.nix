{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_resolver__maven-resolver__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-util:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.9.20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.9.20/maven-resolver-util-1.9.20.jar";
        sha256 = "b869aca6c208d2b1fc92e846e1c13612a5ed2fda3bed9a7c1ae2ff5f14f8cf48";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.9.20/maven-resolver-util-1.9.20.pom";
        sha256 = "caf9e0167d2ccc31787456ce8b8b41c4a8abd30f1cf6559c6e83d98da6accae6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_9_20;
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
