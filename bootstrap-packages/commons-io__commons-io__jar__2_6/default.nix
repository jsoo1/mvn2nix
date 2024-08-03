{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_6
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.6";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.6/commons-io-2.6.jar";
      sha256 = "f877d304660ac2a142f3865badfc971dec7ed73c747c7f8d5d2f5139ca736513";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
