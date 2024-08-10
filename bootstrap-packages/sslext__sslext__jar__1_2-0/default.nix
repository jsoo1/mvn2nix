{
  lib
, pkgs
, patchMavenJar
, struts__struts__jar__1_2_7
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-chain__commons-chain__jar__1_0
, commons-digester__commons-digester__jar__1_6
, commons-collections__commons-collections__jar__2_1
, xml-apis__xml-apis__jar__1_0_b2
, commons-fileupload__commons-fileupload__jar__1_0
, commons-logging__commons-logging__jar__1_0_4
, commons-validator__commons-validator__jar__1_1_4
, oro__oro__jar__2_0_8
, antlr__antlr__jar__2_7_2
, sslext__sslext__pom__1_2-0
}:
patchMavenJar {
  name = "sslext:sslext:jar:1.2-0";
  groupId = "sslext";
  artifactId = "sslext";
  version = "1.2-0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/sslext/sslext/1.2-0/sslext-1.2-0.jar";
      sha256 = "4ec193f85bf3c5e84be4ef79fe1e8e71493b317858735cfe062c4c54f818c312";
    };
  };
  dependencies = [
    {
      drv = struts__struts__jar__1_2_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__jar__1_6;
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
      drv = commons-fileupload__commons-fileupload__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_4;
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
      drv = antlr__antlr__jar__2_7_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = sslext__sslext__pom__1_2-0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
