{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-modules";
  coordinates = "org.apache.maven.doxia:doxia-modules:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-modules";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-modules/1.11.1/doxia-modules-1.11.1.pom";
      sha256 = "d6c12f3529a45ec1a757455267d3ec450af1a7e72b53ccc19e1452611b806866";
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
