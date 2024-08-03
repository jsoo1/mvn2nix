{
  lib
, pkgs
, patchMavenJar
, backport-util-concurrent__backport-util-concurrent__pom__3_1
}:
patchMavenJar {
  name = "backport-util-concurrent:backport-util-concurrent:jar:3.1";
  groupId = "backport-util-concurrent";
  artifactId = "backport-util-concurrent";
  version = "3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/backport-util-concurrent/backport-util-concurrent/3.1/backport-util-concurrent-3.1.jar";
      sha256 = "f5759b7fcdfc83a525a036deedcbd32e5b536b625ebc282426f16ca137eb5902";
    };
  };
  dependencies = [
    {
      drv = backport-util-concurrent__backport-util-concurrent__pom__3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
