{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.0/maven-3.0.pom";
        sha256 = "28fc63720c4a5ff92bf0e358ed55a6f24626f35bccc13cc3e194231e158848f6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
