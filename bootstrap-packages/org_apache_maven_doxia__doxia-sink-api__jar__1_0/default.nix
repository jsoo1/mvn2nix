{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__pom__1_0
}:
patchMavenJar {
  name = "doxia-sink-api";
  coordinates = "org.apache.maven.doxia:doxia-sink-api:jar:1.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0/doxia-sink-api-1.0.jar";
      sha256 = "1cd68e9b4cf427a2b6b9a943a9bef6da879d25702334ea5addb0d153bb8f8911";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
