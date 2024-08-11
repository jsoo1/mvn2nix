{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_12_0
}:
patchMavenJar {
  name = "doxia-sink-api";
  coordinates = "org.apache.maven.doxia:doxia-sink-api:pom:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.pom";
      sha256 = "26b51fddb69b5ca6e044cda28b8d1c1a37b6fafd0cfb9bfb15a919de57c671d5";
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
