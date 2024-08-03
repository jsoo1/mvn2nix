{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-filtering:pom:3.3.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-filtering";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.1/maven-filtering-3.3.1.pom";
      sha256 = "a1d90278a9c3effef6c45db86c660749d2910d8d7361ed81983565950f667e85";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
