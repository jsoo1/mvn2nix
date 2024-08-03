{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__30
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.2.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.2.1/maven-shared-utils-3.2.1.pom";
      sha256 = "ebfec96908fd4ff54d29df33e5b0d8ddd113272dc5c1c34402de8ea8a9f7bf66";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
