{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_6
, commons-logging__commons-logging__jar__1_0
, commons-collections__commons-collections__jar__2_1
, xml-apis__xml-apis__jar__1_0_b2
, commons-digester__commons-digester__pom__1_7
}:
patchMavenJar {
  name = "commons-digester";
  coordinates = "commons-digester:commons-digester:jar:1.7";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.7/commons-digester-1.7.jar";
      sha256 = "c89d540a3323671a7b6da04b4e6d0158c21449cd419534aab63a7b867e9ef52a";
    };
  };
  dependencies = [
    {
      drv = commons-beanutils__commons-beanutils__jar__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = xml-apis__xml-apis__jar__1_0_b2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
