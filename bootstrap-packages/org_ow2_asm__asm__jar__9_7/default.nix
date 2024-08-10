{
  lib
, pkgs
, patchMavenJar
, org_ow2_asm__asm__pom__9_7
}:
patchMavenJar {
  name = "org.ow2.asm:asm:jar:9.7";
  groupId = "org.ow2.asm";
  artifactId = "asm";
  version = "9.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.jar";
      sha256 = "adf46d5e34940bdf148ecdd26a9ee8eea94496a72034ff7141066b3eea5c4e9d";
    };
  };
  dependencies = [
    {
      drv = org_ow2_asm__asm__pom__9_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
