{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__2_0
}:
patchMavenJar {
  name = "commons-collections:commons-collections:jar:2.0";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.0/commons-collections-2.0.jar";
      sha256 = "b5d8a9f671a4e6698d553d0ec98d33ba70358e9b2180c845c88fc7176ddfbb1e";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
