{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.11.1/doxia-logging-api-1.11.1.pom";
      sha256 = "89001fcd98d29ab1c3102b14e7ddf5a3eb8cc3fce38558b485772bfc694c8600";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
