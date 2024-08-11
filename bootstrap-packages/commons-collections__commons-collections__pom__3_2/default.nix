{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-collections";
  coordinates = "commons-collections:commons-collections:pom:3.2";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2/commons-collections-3.2.pom";
      sha256 = "6da6d5e61be60d77a7eea6c7d0b8ac3cc35ca73cef3cbff97d5982006553786d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
