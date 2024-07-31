{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__1_0_4
, commons-codec__commons-codec__1_2
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:3.1";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.1/commons-httpclient-3.1.jar";
        sha256 = "dbd4953d013e10e7c1cc3701a3e6ccd8c950c892f08d804fabfac21705930443";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.1/commons-httpclient-3.1.pom";
        sha256 = "8a9b07d458d3e730221dbecdfafa7353ec1babd3b94c843227c47104a90c6d6c";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-logging__commons-logging__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
