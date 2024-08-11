{
  lib
, pkgs
, patchMavenJar
, avalon-framework__avalon-framework__pom__4_1_3
}:
patchMavenJar {
  name = "avalon-framework";
  coordinates = "avalon-framework:avalon-framework:jar:4.1.3";
  groupId = "avalon-framework";
  artifactId = "avalon-framework";
  version = "4.1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/avalon-framework/avalon-framework/4.1.3/avalon-framework-4.1.3.jar";
      sha256 = "17731fe321a7a7cc3b56cb797634b8ec29fa0322004886a1523bbc7bc7eecf71";
    };
  };
  dependencies = [
    {
      drv = avalon-framework__avalon-framework__pom__4_1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
