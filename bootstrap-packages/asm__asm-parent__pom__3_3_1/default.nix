{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "asm:asm-parent:pom:3.3.1";
  groupId = "asm";
  artifactId = "asm-parent";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/asm/asm-parent/3.3.1/asm-parent-3.3.1.pom";
      sha256 = "2c62f613e86db57b58fe3d5f443dccf0a51f09d1c9c2cb39776afde06d0f7ff0";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
