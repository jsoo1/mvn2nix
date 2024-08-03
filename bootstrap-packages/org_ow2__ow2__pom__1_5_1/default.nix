{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.ow2:ow2:pom:1.5.1";
  groupId = "org.ow2";
  artifactId = "ow2";
  version = "1.5.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/ow2/1.5.1/ow2-1.5.1.pom";
      sha256 = "321ddbb7ee6fe4f53dea6b4cd6db74154d6bfa42391c1f763b361b9f485acf05";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
