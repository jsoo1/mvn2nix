{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__3_2
}:
patchMavenJar {
  name = "commons-collections:commons-collections:jar:3.2";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2/commons-collections-3.2.jar";
      sha256 = "093fea360752de55afcb80cf713403eb1a66cb7dc0d529955b6f4a96f975df5c";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
