{
  lib
, pkgs
, patchMavenJar
, asm__asm-parent__pom__3_3_1
}:
patchMavenJar {
  name = "asm:asm:pom:3.3.1";
  groupId = "asm";
  artifactId = "asm";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/asm/asm/3.3.1/asm-3.3.1.pom";
      sha256 = "6e9dcc0313935ff11e7bea368811e48066ae3177a72ed69bceb3792096f7c2bb";
    };
  };
  dependencies = [
    {
      drv = asm__asm-parent__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
