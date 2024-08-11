{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_0
, org_apache_maven_shared__maven-shared-components__pom__40
}:
patchMavenJar {
  name = "maven-archiver";
  coordinates = "org.apache.maven:maven-archiver:pom:3.6.1";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.6.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.6.1/maven-archiver-3.6.1.pom";
      sha256 = "37c159530afde78680a38f15c18306cfa3750d0a05f1162c34ee980f0efcad87";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__40;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
