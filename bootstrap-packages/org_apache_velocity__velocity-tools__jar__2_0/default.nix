{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-digester__commons-digester__jar__1_8
, commons-chain__commons-chain__jar__1_1
, commons-collections__commons-collections__jar__3_2
, commons-logging__commons-logging__jar__1_1
, javax_servlet__servlet-api__jar__2_3
, commons-validator__commons-validator__jar__1_3_1
, dom4j__dom4j__jar__1_1
, oro__oro__jar__2_0_8
, sslext__sslext__jar__1_2-0
, org_apache_struts__struts-core__jar__1_3_8
, antlr__antlr__jar__2_7_2
, org_apache_struts__struts-taglib__jar__1_3_8
, org_apache_struts__struts-tiles__jar__1_3_8
, org_apache_velocity__velocity__jar__1_6_2
, org_apache_velocity__velocity-tools__pom__2_0
}:
patchMavenJar {
  name = "velocity-tools";
  coordinates = "org.apache.velocity:velocity-tools:jar:2.0";
  groupId = "org.apache.velocity";
  artifactId = "velocity-tools";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity-tools/2.0/velocity-tools-2.0.jar";
      sha256 = "b174eb36bc48c25dce10571c7d3d5dca4e4c1b3e2e31a92b9ed68fe9dea688d9";
    };
  };
  dependencies = [
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__jar__1_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_servlet__servlet-api__jar__2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-validator__commons-validator__jar__1_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = dom4j__dom4j__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__jar__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = sslext__sslext__jar__1_2-0;
      scope = "compile";
      optional = false;
    }
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
      drv = org_apache_struts__struts-taglib__jar__1_3_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_struts__struts-tiles__jar__1_3_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__jar__1_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity-tools__pom__2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
