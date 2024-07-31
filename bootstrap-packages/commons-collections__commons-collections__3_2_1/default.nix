{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__9
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "commons-collections:commons-collections:3.2.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.1/commons-collections-3.2.1.jar";
        sha256 = "87363a4c94eaabeefd8b930cb059f66b64c9f7d632862f23de3012da7660047b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.1/commons-collections-3.2.1.pom";
        sha256 = "1f9626cbaa584ed5d86021866e4e367e26fe5efc248382652be68beeb43e7416";
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
