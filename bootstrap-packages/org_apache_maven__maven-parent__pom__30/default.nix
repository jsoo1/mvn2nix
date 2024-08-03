{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__18
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:30";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/30/maven-parent-30.pom";
      sha256 = "70709ad646f5aa57bb44e2a8b4f3de4993b108202ba095bd164e41cdc3181e70";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
