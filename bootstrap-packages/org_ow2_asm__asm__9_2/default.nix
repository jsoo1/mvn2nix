{
  lib
, pkgs
, patchMavenJar
, org_ow2__ow2__pom__1_5
}:
patchMavenJar {
  name = "org.ow2.asm:asm:9.2";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "9.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.2/asm-9.2.jar";
        sha256 = "b9d4fe4d71938df38839f0eca42aaaa64cf8b313d678da036f0cb3ca199b47f5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.2/asm-9.2.pom";
        sha256 = "dfb12a1b224bf01be1fd604020466f894241bcb645dcce395edd8cd6f8a50df4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_ow2__ow2__pom__1_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
