{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__3_2_2
}:
patchMavenJar {
  name = "commons-collections";
  coordinates = "commons-collections:commons-collections:jar:3.2.2";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar";
      sha256 = "eeeae917917144a68a741d4c0dff66aa5c5c5fd85593ff217bced3fc8ca783b8";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__3_2_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
