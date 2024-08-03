{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__pom__7_2
}:
patchMavenJar {
  name = "org.ow2.asm:asm:jar:7.2";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "7.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/7.2/asm-7.2.jar";
      sha256 = "7e6cc9e92eb94d04e39356c6d8144ca058cda961c344a7f62166a405f3206672";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__pom__7_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
