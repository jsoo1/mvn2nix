{
  lib
, pkgs
, patchMavenJar
, commons-beanutils__commons-beanutils__jar__1_6
, commons-logging__commons-logging__jar__1_0
, commons-collections__commons-collections__jar__2_1
, xml-apis__xml-apis__jar__1_0_b2
, commons-digester__commons-digester__pom__1_6
}:
patchMavenJar {
  name = "commons-digester:commons-digester:jar:1.6";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.6/commons-digester-1.6.jar";
      sha256 = "4040c63d0dba10ce048ec02bcaf67092f58ac5662ae1ba7b050f77cf86265249";
    };
  };
  dependencies = [
    {
      drv = commons-beanutils__commons-beanutils__jar__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0;
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
      drv = commons-digester__commons-digester__pom__1_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
