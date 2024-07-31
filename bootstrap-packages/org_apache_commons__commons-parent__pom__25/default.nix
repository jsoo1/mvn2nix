{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__9
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:25";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "25";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/25/commons-parent-25.pom";
        sha256 = "467ae650442e876867379094e7518dfdd67d22c5352ebd39808c84259e9790ba";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
