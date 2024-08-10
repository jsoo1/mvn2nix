{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-logging__commons-logging__jar__1_1
, log4j__log4j__jar__1_2_12
, logkit__logkit__jar__1_0_1
, avalon-framework__avalon-framework__jar__4_1_3
, javax_servlet__servlet-api__jar__2_3
, commons-digester__commons-digester__pom__1_8
}:
patchMavenJar {
  name = "commons-digester:commons-digester:jar:1.8";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.jar";
      sha256 = "05662373044f3dff112567b7bb5dfa1174e91e074c0c727b4412788013f49d56";
    };
  };
  dependencies = [
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_1;
      scope = "compile";
      optional = false;
    }
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
      drv = commons-digester__commons-digester__pom__1_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
