{
  lib
, pkgs
, patchMavenJar
, org_ow2__ow2__pom__1_5_1
}:
patchMavenJar {
  name = "org.ow2.asm:asm:9.7";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "9.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.jar";
        sha256 = "adf46d5e34940bdf148ecdd26a9ee8eea94496a72034ff7141066b3eea5c4e9d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.pom";
        sha256 = "de00115f1d84f3a0b2ee3a4b6f6192d066f86d185d67b9d1522f2c80feac5f00";
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
