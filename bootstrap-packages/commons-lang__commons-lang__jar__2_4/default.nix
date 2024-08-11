{
  lib
, pkgs
, patchMavenJar
, commons-lang__commons-lang__pom__2_4
}:
patchMavenJar {
  name = "commons-lang";
  coordinates = "commons-lang:commons-lang:jar:2.4";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.jar";
      sha256 = "2c73b940c91250bc98346926270f13a6a10bb6e29d2c9316a70d134e382c873e";
    };
  };
  dependencies = [
    {
      drv = commons-lang__commons-lang__pom__2_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
