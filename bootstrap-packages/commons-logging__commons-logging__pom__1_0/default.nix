{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-logging:commons-logging:pom:1.0";
  groupId = "commons-logging";
  artifactId = "commons-logging";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.0/commons-logging-1.0.pom";
      sha256 = "52b3caa59ca5e8f6279421ecb517a0b24571d666ea86bb145462076760026a6f";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
