{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-integration-tools";
  coordinates = "org.apache.maven.doxia:doxia-integration-tools:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-integration-tools";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.pom";
      sha256 = "1ad03814f59e835fbe6ba81d214b7f27cc6a8a688ac80791c2baa036ca53ec12";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
