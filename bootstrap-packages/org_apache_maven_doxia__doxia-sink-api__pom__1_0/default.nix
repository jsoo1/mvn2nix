{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_0
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:pom:1.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0/doxia-sink-api-1.0.pom";
      sha256 = "50d699f86369802baf2cd16c31d936ad8f0c1a8976120cd1dc3dc70c8abed99a";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
