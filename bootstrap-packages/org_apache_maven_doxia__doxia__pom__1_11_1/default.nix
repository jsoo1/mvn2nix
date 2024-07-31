{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.11.1/doxia-1.11.1.pom";
        sha256 = "784c41e3398c840f01d755a8abb1049c708caff55820ef68eb65719be8feabba";
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
