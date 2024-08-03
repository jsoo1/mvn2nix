{
  lib
, pkgs
, patchMavenJar
, com_jcraft__jsch__pom__0_1_38
}:
patchMavenJar {
  name = "com.jcraft:jsch:jar:0.1.38";
  groupId = "com.jcraft";
  artifactId = "jsch";
  version = "0.1.38";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/jcraft/jsch/0.1.38/jsch-0.1.38.jar";
      sha256 = "fa463ba278e26e4fe50cc4fac9a4d3f0b75f89d0a1bc6a013b66bf8b2c9a3651";
    };
  };
  dependencies = [
    {
      drv = com_jcraft__jsch__pom__0_1_38;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
