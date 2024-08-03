{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "log4j:log4j:pom:1.2.12";
  groupId = "log4j";
  artifactId = "log4j";
  version = "1.2.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.12/log4j-1.2.12.pom";
      sha256 = "cb54dedc5d8c4510148dfa792701cbac1a84c383a84f48f5a32e6d7e460bbb72";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
