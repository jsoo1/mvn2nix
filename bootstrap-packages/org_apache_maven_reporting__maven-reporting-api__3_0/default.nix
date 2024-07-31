{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__1_0
, org_apache_maven_shared__maven-shared-components__pom__15
, org_apache__apache__pom__7
, org_apache_maven__maven-parent__pom__16
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-api:3.0";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.0/maven-reporting-api-3.0.jar";
        sha256 = "498949e5576b022559d1622e534c18e052f94dec883924b67e0a4e8676c07b17";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.0/maven-reporting-api-3.0.pom";
        sha256 = "efaa4fc4832aad9703df46b89cb02845dbf4db6f6ac88534b7824c4956a3a5fb";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__7;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
