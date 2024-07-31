{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__1_0_3
, commons-codec__commons-codec__1_2
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:3.0";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.0/commons-httpclient-3.0.jar";
        sha256 = "7afd18f30e98c92bf873b64bafeea43b4abdeaba62a4e50e1b6b2d00405ef7ef";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.0/commons-httpclient-3.0.pom";
        sha256 = "f38ca875177f44108ee27ea186aca248ff05450888469d1e7afefcc4c7927b90";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-logging__commons-logging__1_0_3;
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
