{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-lang";
  coordinates = "commons-lang:commons-lang:pom:2.1";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.1/commons-lang-2.1.pom";
      sha256 = "f1a709cd489f23498a0b6b3dfbfc0d21d4f15904791446dec7f8a58a7da5bd6a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
