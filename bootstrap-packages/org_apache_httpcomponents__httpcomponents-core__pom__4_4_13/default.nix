{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcomponents-core:pom:4.4.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcomponents-core";
  version = "4.4.13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.13/httpcomponents-core-4.4.13.pom";
        sha256 = "c554e7008e4517c7ef54e005cc8b74f4c87a54a0ea2c6f57be5d0569df51936b";
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
