{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, commons-logging__commons-logging__jar__1_0_3
, commons-codec__commons-codec__jar__1_2
, commons-httpclient__commons-httpclient__pom__3_0
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:jar:3.0";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.0/commons-httpclient-3.0.jar";
      sha256 = "7afd18f30e98c92bf873b64bafeea43b4abdeaba62a4e50e1b6b2d00405ef7ef";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
