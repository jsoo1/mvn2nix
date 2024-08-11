{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-sink-api";
  coordinates = "org.apache.maven.doxia:doxia-sink-api:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.pom";
      sha256 = "780f9b25ba1a38ef6494f32236a59f1ba5b5298724ab4ff3419e9aa3195b9858";
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
