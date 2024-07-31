{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "backport-util-concurrent:backport-util-concurrent:3.1";
  groupId = "backport-util-concurrent";
  artifactId = "backport-util-concurrent";
  version = "3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/backport-util-concurrent/backport-util-concurrent/3.1/backport-util-concurrent-3.1.jar";
        sha256 = "f5759b7fcdfc83a525a036deedcbd32e5b536b625ebc282426f16ca137eb5902";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/backport-util-concurrent/backport-util-concurrent/3.1/backport-util-concurrent-3.1.pom";
        sha256 = "770471090ca40a17b9e436ee2ec00819be42042da6f4085ece1d37916dc08ff9";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
