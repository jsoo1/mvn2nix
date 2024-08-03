{
  lib
, pkgs
, patchMavenJar
, info_picocli__picocli__pom__4_5_0
}:
patchMavenJar {
  name = "info.picocli:picocli:jar:4.5.0";
  groupId = "info.picocli";
  artifactId = "picocli";
  version = "4.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/info/picocli/picocli/4.5.0/picocli-4.5.0.jar";
      sha256 = "9058d90167d293f1379f49129f94424bc4c8c6cdc6a33e31bd6e4886a77733c1";
    };
  };
  dependencies = [
    {
      drv = info_picocli__picocli__pom__4_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
