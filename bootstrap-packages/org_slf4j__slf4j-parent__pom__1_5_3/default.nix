{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.5.3/slf4j-parent-1.5.3.pom";
      sha256 = "ec3fda14f258a45f4b91829242138e60e868dab30ab02d52cf180ead64da2ad4";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
