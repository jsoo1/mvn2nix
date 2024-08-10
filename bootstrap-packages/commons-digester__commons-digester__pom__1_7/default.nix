{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-digester:commons-digester:pom:1.7";
  groupId = "commons-digester";
  artifactId = "commons-digester";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.7/commons-digester-1.7.pom";
      sha256 = "940122143ac7d775a7b5f50a0f4403ea096e95b8f2fad045fe48ad0d8cedf350";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
