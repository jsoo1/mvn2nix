{
  lib
, pkgs
, patchMavenJar
, javax_servlet__servlet-api__2_3
, logkit__logkit__1_0_1
, log4j__log4j__1_2_12
, avalon-framework__avalon-framework__4_1_3
}:
patchMavenJar {
  name = "commons-logging:commons-logging:1.1";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.1/commons-logging-1.1.jar";
        sha256 = "9e8d01f172301b966f1f404aa6fc0bdbec478ae9197256ad95bfcad1ef927601";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.1/commons-logging-1.1.pom";
        sha256 = "1f68425fce1007c3343343a27c27057f1427970682cb6d33e493c111721f7cb6";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_servlet__servlet-api__2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = logkit__logkit__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = log4j__log4j__1_2_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = avalon-framework__avalon-framework__4_1_3;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
