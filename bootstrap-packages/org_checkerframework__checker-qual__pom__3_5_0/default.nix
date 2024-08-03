{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.checkerframework:checker-qual:pom:3.5.0";
  groupId = "org.checkerframework";
  artifactId = "checker-qual";
  version = "3.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.5.0/checker-qual-3.5.0.pom";
      sha256 = "2836b3b8a78edb31a1803592e60fc767b21f2d190764631ba6efa0837bb35721";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
