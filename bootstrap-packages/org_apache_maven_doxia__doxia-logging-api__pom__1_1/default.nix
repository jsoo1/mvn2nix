{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-logging-api:pom:1.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-logging-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.1/doxia-logging-api-1.1.pom";
      sha256 = "2ae3c442073d5b65b623c2464aa4d8c46717d300a20baa932b74031b59710a62";
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
