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
, org_apache_struts__struts-tiles__pom__1_3_8
}:
patchMavenJar {
  name = "struts-tiles";
  coordinates = "org.apache.struts:struts-tiles:jar:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-tiles";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-tiles/1.3.8/struts-tiles-1.3.8.jar";
      sha256 = "3d66e61734b2ddad6e4b34aaa2382480ad6061e59e5e178e346cc275c0429e57";
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
      drv = org_apache_struts__struts-tiles__pom__1_3_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
