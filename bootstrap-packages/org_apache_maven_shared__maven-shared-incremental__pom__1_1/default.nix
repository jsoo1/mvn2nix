{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__19
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-incremental:pom:1.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-incremental";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-incremental/1.1/maven-shared-incremental-1.1.pom";
      sha256 = "f21d19eb49b4a66cd85354a9ee7335439ea92a368173760a202766008cc19924";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__19;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
