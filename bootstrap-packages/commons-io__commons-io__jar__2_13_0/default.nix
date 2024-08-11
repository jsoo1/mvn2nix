{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_13_0
}:
patchMavenJar {
  name = "commons-io";
  coordinates = "commons-io:commons-io:jar:2.13.0";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.13.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.13.0/commons-io-2.13.0.jar";
      sha256 = "671eaa39688dac2ffaa4645b3c9980ae2d0ea2471e4ae6a5da199cd15ae23666";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_13_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
