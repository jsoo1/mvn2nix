{
  lib
, pkgs
, patchMavenJar
, javax_portlet__portlet-api__jar__1_0
, myfaces__myfaces-api__jar__1_1_0
, commons-codec__commons-codec__jar__1_3
, commons-collections__commons-collections__jar__3_1
, commons-el__commons-el__jar__1_0
, commons-fileupload__commons-fileupload__jar__1_0
, commons-lang__commons-lang__jar__2_1
, commons-validator__commons-validator__jar__1_1_4
, oro__oro__jar__2_0_8
, javax_servlet__jstl__jar__1_1_2
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-digester__commons-digester__jar__1_6
, xml-apis__xml-apis__jar__1_0_b2
, commons-logging__commons-logging__jar__1_0_3
, commons-chain__commons-chain__pom__1_1
}:
patchMavenJar {
  name = "commons-chain";
  coordinates = "commons-chain:commons-chain:jar:1.1";
  groupId = "commons-chain";
  artifactId = "commons-chain";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-chain/commons-chain/1.1/commons-chain-1.1.jar";
      sha256 = "e408f72da5ed4c5db6ae19e8c3b7ee36259c36c05f7a77f15509a014bfe7bcaa";
    };
  };
  dependencies = [
    {
      drv = javax_portlet__portlet-api__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = myfaces__myfaces-api__jar__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-el__commons-el__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-fileupload__commons-fileupload__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-validator__commons-validator__jar__1_1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__jar__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_servlet__jstl__jar__1_1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__jar__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = xml-apis__xml-apis__jar__1_0_b2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
