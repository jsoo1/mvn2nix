{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__9
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "commons-lang:commons-lang:2.4";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.jar";
        sha256 = "2c73b940c91250bc98346926270f13a6a10bb6e29d2c9316a70d134e382c873e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.pom";
        sha256 = "90306278d39ed5a50dafa468adee4d272b635d54c4f7295e293e42bbdb8ad666";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__9;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
