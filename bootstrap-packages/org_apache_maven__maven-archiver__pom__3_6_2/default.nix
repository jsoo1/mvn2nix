{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_shared__maven-shared-components__pom__41
}:
patchMavenJar {
  name = "org.apache.maven:maven-archiver:pom:3.6.2";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.6.2/maven-archiver-3.6.2.pom";
      sha256 = "8b117b0dc205a71abda33463f8c7ff891513cfb92241d8a011f9e8ac5ea21e77";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
