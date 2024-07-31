{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-collections:commons-collections:2.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.1/commons-collections-2.1.jar";
        sha256 = "443c2f6379ea2d9300af4733a3ad561032139c5a7890b5876c0b33212dd478f5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.1/commons-collections-2.1.pom";
        sha256 = "f8a93d50bfaf6fc0720eee8fde6e8fde20da33238ba296e9b1b7cba50ca6d772";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
