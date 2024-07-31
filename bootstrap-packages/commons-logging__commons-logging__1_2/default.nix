{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__13
, logkit__logkit__1_0_1
, avalon-framework__avalon-framework__4_1_5
, log4j__log4j__1_2_17
, org_apache_commons__commons-parent__pom__34
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.2";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar";
        sha256 = "daddea1ea0be0f56978ab3006b8ac92834afeefbd9b7e4e6316fca57df0fa636";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.pom";
        sha256 = "c91ab5aa570d86f6fd07cc158ec6bc2c50080402972ee9179fe24100739fbb20";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__13;
      scope = "test";
      optional = false;
    }
    {
      drv = logkit__logkit__1_0_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = avalon-framework__avalon-framework__4_1_5;
      scope = "compile";
      optional = true;
    }
    {
      drv = log4j__log4j__1_2_17;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_commons__commons-parent__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
