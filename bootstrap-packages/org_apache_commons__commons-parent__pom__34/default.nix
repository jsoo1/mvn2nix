{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__13
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:34";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "34";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/34/commons-parent-34.pom";
        sha256 = "3a2e69d06d641d1f3b293126dc9e2e4ea6563bf8c36c87e0ab6fa4292d04b79c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
