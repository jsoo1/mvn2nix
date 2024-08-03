{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:pom:1.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.1/doxia-sink-api-1.1.pom";
      sha256 = "9d9f2299c52d9e5797647c3cbb0426b15cb266c4f847b88cb55ce05f2690e961";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
