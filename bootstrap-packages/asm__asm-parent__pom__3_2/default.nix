{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "asm:asm-parent:pom:3.2";
  groupId = "asm";
  artifactId = "asm-parent";
  version = "3.2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/asm/asm-parent/3.2/asm-parent-3.2.pom";
        sha256 = "f588e5317c8c329cb7ca54cfe7f853401fc28bd8c372589926d64c64611877c7";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
