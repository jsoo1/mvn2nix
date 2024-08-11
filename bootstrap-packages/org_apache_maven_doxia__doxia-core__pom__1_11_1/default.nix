{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-core";
  coordinates = "org.apache.maven.doxia:doxia-core:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-core";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.pom";
      sha256 = "d22567378e3481adfa8d06ee2a6e882533c2c270c5b8653f1c159fd2de05b168";
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
