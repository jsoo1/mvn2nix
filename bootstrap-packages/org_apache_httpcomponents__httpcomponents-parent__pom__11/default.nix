{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcomponents-parent:pom:11";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcomponents-parent";
  version = "11";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-parent/11/httpcomponents-parent-11.pom";
        sha256 = "a901f87b115c55070c7ee43efff63e20e7b02d30af2443ae292bf1f4e532d3aa";
      };
    }
  ];
  dependencies = [
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
