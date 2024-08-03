{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__jar__1_0_4
, commons-codec__commons-codec__jar__1_2
, commons-httpclient__commons-httpclient__pom__3_1
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:jar:3.1";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.1/commons-httpclient-3.1.jar";
      sha256 = "dbd4953d013e10e7c1cc3701a3e6ccd8c950c892f08d804fabfac21705930443";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__jar__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__pom__3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
