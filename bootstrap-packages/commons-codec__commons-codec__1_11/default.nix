{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__42
, org_apache__apache__pom__18
}:
patchMavenJar {
  name = "commons-codec:commons-codec:1.11";
  groupId = "commons-codec";
  artifactId = "commons-codec";
  version = "1.11";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.11/commons-codec-1.11.jar";
        sha256 = "e599d5318e97aa48f42136a2927e6dfa4e8881dff0e6c8e3109ddbbff51d7b7d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.11/commons-codec-1.11.pom";
        sha256 = "c1e7140d1dea8fdf3528bc1e3c5444ac0b541297311f45f9806c213ec3ee9a10";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
