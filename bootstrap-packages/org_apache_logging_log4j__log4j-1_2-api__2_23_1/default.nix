{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_logging__logging-parent__pom__10_6_0
, org_apache_logging_log4j__log4j-bom__pom__2_23_1
, org_apache_logging_log4j__log4j__pom__2_23_1
, org_apache_logging_log4j__log4j-core__2_23_1
, org_apache_logging_log4j__log4j-api__2_23_1
}:
patchMavenJar {
  name = "org.apache.logging.log4j:log4j-1.2-api:2.23.1";
  groupId = "org.apache.logging.log4j";
  artifactId = "log4j-1.2-api";
  version = "2.23.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-1.2-api/2.23.1/log4j-1.2-api-2.23.1.jar";
        sha256 = "4d0433042361e962656250e1568f0008c9fac2e48c74f53ca51563a14363b927";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-1.2-api/2.23.1/log4j-1.2-api-2.23.1.pom";
        sha256 = "ca23884ae7e96404943544343e6205285e3ee0174d408c02e008cc5687fb404c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging__logging-parent__pom__10_6_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging_log4j__log4j-bom__pom__2_23_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging_log4j__log4j__pom__2_23_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging_log4j__log4j-core__2_23_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_logging_log4j__log4j-api__2_23_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
