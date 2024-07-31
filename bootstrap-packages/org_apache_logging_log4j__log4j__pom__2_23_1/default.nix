{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_logging__logging-parent__pom__10_6_0
, org_apache_logging_log4j__log4j-bom__pom__2_23_1
}:
patchMavenJar {
  name = "org.apache.logging.log4j:log4j:pom:2.23.1";
  groupId = "org.apache.logging.log4j";
  artifactId = "log4j";
  version = "2.23.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j/2.23.1/log4j-2.23.1.pom";
        sha256 = "6ce1540455364b53ea22a18342cb126a6381633f653f095467f2aa198511a6ce";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
