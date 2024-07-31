{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcomponents-core:pom:4.4.14";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcomponents-core";
  version = "4.4.14";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.14/httpcomponents-core-4.4.14.pom";
        sha256 = "209ed931cb57998252dfe027caa9c03ada620613642329679131165f8b1cbad1";
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
