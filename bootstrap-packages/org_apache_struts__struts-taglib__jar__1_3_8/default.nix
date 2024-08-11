{
  lib
, pkgs
, patchMavenJar
, org_apache_struts__struts-core__jar__1_3_8
, antlr__antlr__jar__2_7_2
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-chain__commons-chain__jar__1_1
, commons-digester__commons-digester__jar__1_8
, commons-logging__commons-logging__jar__1_0_4
, commons-validator__commons-validator__jar__1_3_1
, oro__oro__jar__2_0_8
, org_apache_struts__struts-taglib__pom__1_3_8
}:
patchMavenJar {
  name = "struts-taglib";
  coordinates = "org.apache.struts:struts-taglib:jar:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-taglib";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-taglib/1.3.8/struts-taglib-1.3.8.jar";
      sha256 = "0b54adf308e50d8fdb82066b058bfa57ee244d1cdcf4bf7b6c12fb11d91f44a5";
    };
  };
  dependencies = [
    {
      drv = org_apache_struts__struts-core__jar__1_3_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = antlr__antlr__jar__2_7_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__jar__1_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-validator__commons-validator__jar__1_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__jar__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_struts__struts-taglib__pom__1_3_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
