{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__pom__9_6
}:
patchMavenJar {
  name = "org.ow2.asm:asm:jar:9.6";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "9.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.6/asm-9.6.jar";
      sha256 = "3c6fac2424db3d4a853b669f4e3d1d9c3c552235e19a319673f887083c2303a1";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__pom__9_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
