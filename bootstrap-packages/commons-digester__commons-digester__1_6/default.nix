{
  lib
, pkgs
, patchMavenJar
, xml-apis__xml-apis__1_0_b2
, commons-logging__commons-logging__1_0
, commons-beanutils__commons-beanutils__1_6
, commons-collections__commons-collections__2_1
}:
patchMavenJar {
  name = "commons-digester:commons-digester:1.6";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.6/commons-digester-1.6.jar";
        sha256 = "4040c63d0dba10ce048ec02bcaf67092f58ac5662ae1ba7b050f77cf86265249";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.6/commons-digester-1.6.pom";
        sha256 = "9ef0db04ffe98d03eb9a921337364be7d123d58d66dcaff3eac763f0b0c63d48";
      };
    }
  ];
  dependencies = [
    {
      drv = xml-apis__xml-apis__1_0_b2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__1_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__2_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
