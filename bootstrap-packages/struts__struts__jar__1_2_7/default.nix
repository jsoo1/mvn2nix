{
  lib
, pkgs
, patchMavenJar
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
, struts__struts__pom__1_2_7
}:
patchMavenJar {
  name = "struts:struts:jar:1.2.7";
  groupId = "struts";
  artifactId = "struts";
  version = "1.2.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/struts/struts/1.2.7/struts-1.2.7.jar";
      sha256 = "2928992190fbc2f36449b68c03606e1fff447598a9df213822084859cccecc4c";
    };
  };
  dependencies = [
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
      drv = struts__struts__pom__1_2_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
