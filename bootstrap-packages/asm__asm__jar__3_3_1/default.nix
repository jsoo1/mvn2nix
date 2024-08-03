{
  lib
, pkgs
, patchMavenJar
, asm__asm__pom__3_3_1
}:
patchMavenJar {
  name = "asm:asm:jar:3.3.1";
  groupId = "asm";
  artifactId = "asm";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/asm/asm/3.3.1/asm-3.3.1.jar";
      sha256 = "c2b39275f8e951bc74750080a1266cdabc39399bc5e13d642bf2d346449df7f3";
    };
  };
  dependencies = [
    {
      drv = asm__asm__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
