{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__1_0
, commons-collections__commons-collections__2_0
}:
patchMavenJar {
  name = "commons-beanutils:commons-beanutils:1.6";
  groupId = "commons-beanutils";
  artifactId = "commons-beanutils";
  version = "1.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.jar";
        sha256 = "77d8fe257bd9b186cce1261bea2364384ae861b1999815d549121710b0f89407";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.pom";
        sha256 = "f1309fdb6c64284485bc39188e55d0a30ddbb9311e4d4b6ee08bb038fa4b556d";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-logging__commons-logging__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__2_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
