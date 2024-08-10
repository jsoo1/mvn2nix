{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_12_0
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:pom:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.pom";
      sha256 = "9dd99b4350223846585310694c446318b1692ba746ed717376d59619a27123b4";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_12_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
