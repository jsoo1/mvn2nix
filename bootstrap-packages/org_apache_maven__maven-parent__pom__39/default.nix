{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:39";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "39";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/39/maven-parent-39.pom";
      sha256 = "cfe4820aa1d96ae51d1dc5b0e2a9dc582c42478c24c95ca8238f547e60bef721";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
