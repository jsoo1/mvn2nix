{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sitetools:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sitetools";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sitetools/1.11.1/doxia-sitetools-1.11.1.pom";
        sha256 = "1ee7c5b411e6c91b70a19683ef96ac6fd273f9323d3f4a396e201949f48aa748";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
