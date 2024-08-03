{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-httpclient:commons-httpclient:pom:3.0";
  groupId = "commons-httpclient";
  artifactId = "commons-httpclient";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-httpclient/commons-httpclient/3.0/commons-httpclient-3.0.pom";
      sha256 = "f38ca875177f44108ee27ea186aca248ff05450888469d1e7afefcc4c7927b90";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
