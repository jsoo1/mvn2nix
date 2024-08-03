{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__pom__6_2
}:
patchMavenJar {
  name = "org.ow2.asm:asm:jar:6.2";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/6.2/asm-6.2.jar";
      sha256 = "917bda888bc543187325d5fbc1034207eed152574ef78df1734ca0aee40b7fc8";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__pom__6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
