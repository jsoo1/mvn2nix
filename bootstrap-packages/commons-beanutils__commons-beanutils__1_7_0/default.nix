{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__1_0_3
}:
patchMavenJar {
  name = "commons-beanutils:commons-beanutils:1.7.0";
  groupId = "commons-beanutils";
  artifactId = "commons-beanutils";
  version = "1.7.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.7.0/commons-beanutils-1.7.0.jar";
        sha256 = "24bcaa20ccbdc7c856ce0c0aea144566943403e2e9f27bd9779cda1d76823ef4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.7.0/commons-beanutils-1.7.0.pom";
        sha256 = "b6aca6465a28b027686f025d57702f90ad0d128e14d1cfceca0bd871f0084ad9";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-logging__commons-logging__1_0_3;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
