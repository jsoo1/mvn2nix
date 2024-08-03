{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:pom:3.1";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.1/commons-httpclient-3.1.pom";
      sha256 = "8a9b07d458d3e730221dbecdfafa7353ec1babd3b94c843227c47104a90c6d6c";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
