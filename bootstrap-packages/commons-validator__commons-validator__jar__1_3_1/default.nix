{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_7_0
, commons-digester__commons-digester__jar__1_6
, commons-collections__commons-collections__jar__2_1
, xml-apis__xml-apis__jar__1_0_b2
, commons-logging__commons-logging__jar__1_0_4
, commons-validator__commons-validator__pom__1_3_1
}:
patchMavenJar {
  name = "commons-validator";
  coordinates = "commons-validator:commons-validator:jar:1.3.1";
  groupId = "commons-validator";
  artifactId = "commons-validator";
  version = "1.3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-validator/commons-validator/1.3.1/commons-validator-1.3.1.jar";
      sha256 = "d3680636c84e5cea6bfe43f338f8bab03d6a3e18cc663fc8b671684ef66c0c8d";
    };
  };
  dependencies = [
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
      drv = commons-logging__commons-logging__jar__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-validator__commons-validator__pom__1_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
