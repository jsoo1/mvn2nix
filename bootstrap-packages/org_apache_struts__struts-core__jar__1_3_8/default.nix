{
  lib
, pkgs
, patchMavenJar
, antlr__antlr__jar__2_7_2
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-chain__commons-chain__jar__1_1
, commons-digester__commons-digester__jar__1_8
, commons-logging__commons-logging__jar__1_0_4
, commons-validator__commons-validator__jar__1_3_1
, oro__oro__jar__2_0_8
, org_apache_struts__struts-core__pom__1_3_8
}:
patchMavenJar {
  name = "org.apache.struts:struts-core:jar:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-core";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-core/1.3.8/struts-core-1.3.8.jar";
      sha256 = "a7881710517dd6a50fa81c04d494e1493ad326bcc1adf2eb9493e5eb9ca9e077";
    };
  };
  dependencies = [
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
      drv = org_apache_struts__struts-core__pom__1_3_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
