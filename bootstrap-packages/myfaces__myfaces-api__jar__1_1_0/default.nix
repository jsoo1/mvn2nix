{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-codec__commons-codec__jar__1_3
, commons-collections__commons-collections__jar__3_1
, commons-digester__commons-digester__jar__1_7
, xml-apis__xml-apis__jar__1_0_b2
, commons-el__commons-el__jar__1_0
, commons-fileupload__commons-fileupload__jar__1_0
, commons-lang__commons-lang__jar__2_1
, commons-logging__commons-logging__jar__1_0_4
, commons-validator__commons-validator__jar__1_1_4
, oro__oro__jar__2_0_8
, javax_servlet__jstl__jar__1_1_2
, myfaces__myfaces-api__pom__1_1_0
}:
patchMavenJar {
  name = "myfaces-api";
  coordinates = "myfaces:myfaces-api:jar:1.1.0";
  groupId = "myfaces";
  artifactId = "myfaces-api";
  version = "1.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/myfaces/myfaces-api/1.1.0/myfaces-api-1.1.0.jar";
      sha256 = "4d0fbc7d52b0ab8ba32a69d0249a67ddddc0df7513b8c21f55cabdcd3c5833a5";
    };
  };
  dependencies = [
    {
      drv = commons-beanutils__commons-beanutils__jar__1_7_0;
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
      drv = commons-digester__commons-digester__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = xml-apis__xml-apis__jar__1_0_b2;
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
      drv = javax_servlet__jstl__jar__1_1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = myfaces__myfaces-api__pom__1_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
