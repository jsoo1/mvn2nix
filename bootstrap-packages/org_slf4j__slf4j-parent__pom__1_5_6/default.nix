{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:1.5.6";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.5.6/slf4j-parent-1.5.6.pom";
      sha256 = "b9d17d6f915b389c7dd77f170d6fcc77f1c7d6c7362fefb146043d8412defddd";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
