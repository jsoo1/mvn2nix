{
  lib
, pkgs
, patchMavenJar
, org_ow2__ow2__pom__1_5
}:
patchMavenJar {
  name = "org.ow2.asm:asm:pom:7.2";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "7.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/7.2/asm-7.2.pom";
      sha256 = "e9e529afbd4bc699f6a3380855d27d13017c360fdb68547e06d1c3842d84e262";
    };
  };
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
