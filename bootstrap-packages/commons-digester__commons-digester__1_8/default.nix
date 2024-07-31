{
  lib
, pkgs
, patchMavenJar
, javax_servlet__servlet-api__2_3
, commons-beanutils__commons-beanutils__1_7_0
, logkit__logkit__1_0_1
, log4j__log4j__1_2_12
, commons-logging__commons-logging__1_1
, avalon-framework__avalon-framework__4_1_3
}:
patchMavenJar {
  name = "commons-digester:commons-digester:1.8";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.jar";
        sha256 = "05662373044f3dff112567b7bb5dfa1174e91e074c0c727b4412788013f49d56";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.pom";
        sha256 = "c10144f223d7ab697ccea7da0e753b75603ea7fbc4e35570068e6c477068e9b5";
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
      drv = commons-beanutils__commons-beanutils__1_7_0;
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
      drv = commons-logging__commons-logging__1_1;
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
