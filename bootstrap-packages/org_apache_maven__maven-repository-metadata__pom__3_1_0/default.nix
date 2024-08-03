{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.1.0/maven-repository-metadata-3.1.0.pom";
      sha256 = "446084f28b60da15914f9a7958ea758fb582de21c986b329130f5b54b3565191";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
