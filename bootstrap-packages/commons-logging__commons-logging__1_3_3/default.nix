{
  lib
, pkgs
, patchMavenJar
, org_apache_logging_log4j__log4j-1_2-api__2_23_1
, org_apache_commons__commons-parent__pom__71
, org_apache__apache__pom__32
, org_apache_logging_log4j__log4j-api__2_23_1
, logkit__logkit__2_0
, org_slf4j__slf4j-api__2_0_13
, avalon-framework__avalon-framework__4_1_5
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.3.3";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.3.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.3.3/commons-logging-1.3.3.jar";
        sha256 = "5828f96c09d886f9b1a0993c7804b27cf4fcec8534517164f5137ac8b67ea9b9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.3.3/commons-logging-1.3.3.pom";
        sha256 = "125d6142eac3f774440ba702c05f28f9e098c52d10712ae11496acb77106b3ba";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_logging_log4j__log4j-1_2-api__2_23_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_commons__commons-parent__pom__71;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging_log4j__log4j-api__2_23_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = logkit__logkit__2_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_slf4j__slf4j-api__2_0_13;
      scope = "compile";
      optional = true;
    }
    {
      drv = avalon-framework__avalon-framework__4_1_5;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
