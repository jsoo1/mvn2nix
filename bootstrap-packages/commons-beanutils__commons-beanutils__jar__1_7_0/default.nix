{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__jar__1_0_3
, commons-beanutils__commons-beanutils__pom__1_7_0
}:
patchMavenJar {
  name = "commons-beanutils:commons-beanutils:jar:1.7.0";
  groupId = "commons-beanutils";
  artifactId = "commons-beanutils";
  version = "1.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.7.0/commons-beanutils-1.7.0.jar";
      sha256 = "24bcaa20ccbdc7c856ce0c0aea144566943403e2e9f27bd9779cda1d76823ef4";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__jar__1_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__pom__1_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
