{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_0
, org_apache_maven_reporting__maven-reporting-api__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-api:jar:3.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.0/maven-reporting-api-3.0.jar";
      sha256 = "498949e5576b022559d1622e534c18e052f94dec883924b67e0a4e8676c07b17";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
