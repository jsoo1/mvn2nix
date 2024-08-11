{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-site-renderer";
  coordinates = "org.apache.maven.doxia:doxia-site-renderer:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-site-renderer";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.pom";
      sha256 = "bd9ac2f023c8fbf7fc2ab00cee25dffbc18249870ce0da2ec46ba6689066184f";
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
