{
  lib
, pkgs
, patchMavenJar
, org_ow2__ow2__pom__1_5_1
}:
patchMavenJar {
  name = "org.ow2.asm:asm:9.6";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "9.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.6/asm-9.6.jar";
        sha256 = "3c6fac2424db3d4a853b669f4e3d1d9c3c552235e19a319673f887083c2303a1";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.6/asm-9.6.pom";
        sha256 = "92eee24bc3c843e4881d46c1dd6505471ee3142facfb466b428cfea5a56c6b60";
      };
    }
  ];
  dependencies = [
    {
      drv = org_ow2__ow2__pom__1_5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
