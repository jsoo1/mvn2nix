{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__33
}:
patchMavenJar {
  name = "org.apache.maven:maven-archiver:pom:3.5.0";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.5.0/maven-archiver-3.5.0.pom";
      sha256 = "3013b3b9e7bf1b47fe42b579db2bc7740949688cac18d48c53158a049dbc8c57";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
