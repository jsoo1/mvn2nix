{
  lib
, pkgs
, patchMavenJar
, junit__junit__pom__3_8_2
}:
patchMavenJar {
  name = "junit:junit:jar:3.8.2";
  groupId = "junit";
  artifactId = "junit";
  version = "3.8.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.2/junit-3.8.2.jar";
      sha256 = "ecdcc08183708ea3f7b0ddc96f19678a0db8af1fb397791d484aed63200558b0";
    };
  };
  dependencies = [
    {
      drv = junit__junit__pom__3_8_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
