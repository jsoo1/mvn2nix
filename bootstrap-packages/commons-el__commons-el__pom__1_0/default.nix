{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-el";
  coordinates = "commons-el:commons-el:pom:1.0";
  groupId = "commons-el";
  artifactId = "commons-el";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-el/commons-el/1.0/commons-el-1.0.pom";
      sha256 = "0af3101e0487ee5e0b27fe86bac2f682fa12a3a292bb3bd19b9f27d5ed80aec4";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
