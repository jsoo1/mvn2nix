{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_logging__logging-parent__pom__10_6_0
, org_apache_logging_log4j__log4j-bom__pom__2_23_1
, org_apache_logging_log4j__log4j__pom__2_23_1
}:
patchMavenJar {
  name = "org.apache.logging.log4j:log4j-api:2.23.1";
  groupId = "org.apache.logging.log4j";
  artifactId = "log4j-api";
  version = "2.23.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-api/2.23.1/log4j-api-2.23.1.jar";
        sha256 = "92ec1fd36ab3bc09de6198d2d7c0914685c0f7127ea931acc32fd2ecdd82ea89";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-api/2.23.1/log4j-api-2.23.1.pom";
        sha256 = "b67cc3d0980927049a3beb00d506ece288746732b0dec812245c59f453fb1ca1";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
