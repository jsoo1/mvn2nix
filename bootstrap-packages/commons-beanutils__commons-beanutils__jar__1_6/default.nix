{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__jar__1_0
, commons-collections__commons-collections__jar__2_0
, commons-beanutils__commons-beanutils__pom__1_6
}:
patchMavenJar {
  name = "commons-beanutils";
  coordinates = "commons-beanutils:commons-beanutils:jar:1.6";
  groupId = "commons-beanutils";
  artifactId = "commons-beanutils";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.jar";
      sha256 = "77d8fe257bd9b186cce1261bea2364384ae861b1999815d549121710b0f89407";
    };
  };
  dependencies = [
    {
      drv = commons-logging__commons-logging__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__pom__1_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
