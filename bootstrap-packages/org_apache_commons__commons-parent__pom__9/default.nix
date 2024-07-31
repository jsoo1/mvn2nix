{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:9";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "9";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/9/commons-parent-9.pom";
        sha256 = "5331b7d3e0aed59728c80f1118e4dbf78565d4109e81d16602c9cadbdb23a128";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
