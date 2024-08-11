{
  lib
, pkgs
, patchMavenJar
, antlr__antlr__pom__2_7_2
}:
patchMavenJar {
  name = "antlr";
  coordinates = "antlr:antlr:jar:2.7.2";
  groupId = "antlr";
  artifactId = "antlr";
  version = "2.7.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/antlr/antlr/2.7.2/antlr-2.7.2.jar";
      sha256 = "2a53206963dfa78e33746b6f8367f7d9970fa36865a825d7bfbce1784dc0f4d4";
    };
  };
  dependencies = [
    {
      drv = antlr__antlr__pom__2_7_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
