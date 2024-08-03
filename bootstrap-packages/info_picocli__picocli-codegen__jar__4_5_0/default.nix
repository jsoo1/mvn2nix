{
  lib
, pkgs
, patchMavenJar
, info_picocli__picocli__jar__4_5_0
, info_picocli__picocli-codegen__pom__4_5_0
}:
patchMavenJar {
  name = "info.picocli:picocli-codegen:jar:4.5.0";
  groupId = "info.picocli";
  artifactId = "picocli-codegen";
  version = "4.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/info/picocli/picocli-codegen/4.5.0/picocli-codegen-4.5.0.jar";
      sha256 = "01c2346d595f6245655a6924aad0bb19517de93ace9d99c46500cafdc6caf2d4";
    };
  };
  dependencies = [
    {
      drv = info_picocli__picocli__jar__4_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = info_picocli__picocli-codegen__pom__4_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
