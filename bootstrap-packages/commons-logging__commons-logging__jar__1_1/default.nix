{
  lib
, pkgs
, patchMavenJar
, log4j__log4j__jar__1_2_12
, logkit__logkit__jar__1_0_1
, avalon-framework__avalon-framework__jar__4_1_3
, javax_servlet__servlet-api__jar__2_3
, commons-logging__commons-logging__pom__1_1
}:
patchMavenJar {
  name = "commons-logging";
  coordinates = "commons-logging:commons-logging:jar:1.1";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.1/commons-logging-1.1.jar";
      sha256 = "9e8d01f172301b966f1f404aa6fc0bdbec478ae9197256ad95bfcad1ef927601";
    };
  };
  dependencies = [
    {
      drv = log4j__log4j__jar__1_2_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = logkit__logkit__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = avalon-framework__avalon-framework__jar__4_1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_servlet__servlet-api__jar__2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
