{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
, org_apache_maven_resolver__maven-resolver__pom__1_4_1
, org_apache_maven_resolver__maven-resolver-api__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-util:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.4.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.jar";
        sha256 = "6b2184872fa7cc2ef5a90481b56af9711c15b371e69ab52f0f31bf24e910dd82";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.pom";
        sha256 = "a58c932e967e85e7bcb8d4adaedd14a5221a1750a1d089c5086c4d73df505155";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_4_1;
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
