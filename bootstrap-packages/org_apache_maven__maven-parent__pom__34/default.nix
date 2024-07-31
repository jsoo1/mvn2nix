{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:34";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "34";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/34/maven-parent-34.pom";
        sha256 = "1a8faf7a6a2b848acb26a959954ee115c0d79dbe75a6206fb3b8c7c2f45a237f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
