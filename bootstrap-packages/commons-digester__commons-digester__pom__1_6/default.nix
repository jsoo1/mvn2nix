{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-digester";
  coordinates = "commons-digester:commons-digester:pom:1.6";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.6/commons-digester-1.6.pom";
      sha256 = "9ef0db04ffe98d03eb9a921337364be7d123d58d66dcaff3eac763f0b0c63d48";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
