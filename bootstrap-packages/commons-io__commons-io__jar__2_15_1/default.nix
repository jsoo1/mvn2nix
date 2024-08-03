{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_15_1
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.15.1";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.15.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.15.1/commons-io-2.15.1.jar";
      sha256 = "a58af12ee1b68cfd2ebb0c27caef164f084381a00ec81a48cc275fd7ea54e154";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_15_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
