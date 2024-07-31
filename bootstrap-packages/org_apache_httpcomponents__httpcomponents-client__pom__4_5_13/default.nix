{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcomponents-client:pom:4.5.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcomponents-client";
  version = "4.5.13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-client/4.5.13/httpcomponents-client-4.5.13.pom";
        sha256 = "9cba594c08db7271d0c20e9845d622bb39e69583910b45e7d5df82f6058d4dd9";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcomponents-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
