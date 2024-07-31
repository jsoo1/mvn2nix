{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
, org_apache_maven_resolver__maven-resolver__pom__1_4_1
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-api:1.4.1";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-api";
  version = "1.4.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.jar";
        sha256 = "33dc67306cc95da14e5444e8b494d967924abf1d01bae1894676164cbd3f6112";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.pom";
        sha256 = "335513ce1dd2cf4c7d1dbfa1b8aa14656d9be5f9f3f0d0875ac528893c9f0f06";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
