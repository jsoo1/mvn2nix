{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__16
, org_apache_commons__commons-parent__pom__39
}:
patchMavenJar {
  name = "commons-collections:commons-collections:3.2.2";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar";
        sha256 = "eeeae917917144a68a741d4c0dff66aa5c5c5fd85593ff217bced3fc8ca783b8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.pom";
        sha256 = "d5d81fcc288c0d8c711c302007cada4aa9a226ed1a112d4baa64cb1d6322170b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__16;
      scope = "test";
      optional = false;
    }
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
