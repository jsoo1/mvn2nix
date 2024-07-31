{
  lib
, pkgs
, patchMavenJar
, asm__asm-parent__pom__3_2
}:
patchMavenJar {
  name = "asm:asm:3.2";
  groupId = "asm";
  artifactId = "asm";
  version = "3.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/asm/asm/3.2/asm-3.2.jar";
        sha256 = "1ac3b6e18dbd7053cdbef7374b8401ad7ff64ceb80060ccace4dc35e6eb89d49";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/asm/asm/3.2/asm-3.2.pom";
        sha256 = "2470110584ced1eacd9fc4ddbd10a1914494a46418292be16dc2558efd35d788";
      };
    }
  ];
  dependencies = [
    {
      drv = asm__asm-parent__pom__3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
