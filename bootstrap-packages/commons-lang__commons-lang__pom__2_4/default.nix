{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__9
}:
patchMavenJar {
  name = "commons-lang";
  coordinates = "commons-lang:commons-lang:pom:2.4";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.pom";
      sha256 = "90306278d39ed5a50dafa468adee4d272b635d54c4f7295e293e42bbdb8ad666";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
