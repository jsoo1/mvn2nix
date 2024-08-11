{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__39
}:
patchMavenJar {
  name = "commons-collections";
  coordinates = "commons-collections:commons-collections:pom:3.2.2";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.pom";
      sha256 = "d5d81fcc288c0d8c711c302007cada4aa9a226ed1a112d4baa64cb1d6322170b";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
