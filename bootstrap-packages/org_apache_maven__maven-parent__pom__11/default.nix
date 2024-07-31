{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__5
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:11";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "11";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/11/maven-parent-11.pom";
        sha256 = "7450c3330cf06c254db9f0dc5ef49eac15502311cf19e0208ba473076ee043d6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
