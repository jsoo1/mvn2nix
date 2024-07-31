{
  lib
, pkgs
, patchMavenJar
, xml-apis__xml-apis__1_0_b2
, commons-beanutils__commons-beanutils__1_7_0
, commons-digester__commons-digester__1_6
, commons-collections__commons-collections__2_1
, commons-logging__commons-logging__1_0_3
}:
patchMavenJar {
  name = "commons-chain:commons-chain:1.1";
  groupId = "commons-chain";
  artifactId = "commons-chain";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-chain/commons-chain/1.1/commons-chain-1.1.jar";
        sha256 = "e408f72da5ed4c5db6ae19e8c3b7ee36259c36c05f7a77f15509a014bfe7bcaa";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-chain/commons-chain/1.1/commons-chain-1.1.pom";
        sha256 = "cf0c15c4e843507d95be11114039794494d6fc6259118581a90e03b2db5f5acb";
      };
    }
  ];
  dependencies = [
    {
      drv = xml-apis__xml-apis__1_0_b2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_0_3;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
