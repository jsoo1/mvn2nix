{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "plexus:plexus-root:pom:1.0.3";
  groupId = "plexus";
  artifactId = "plexus-root";
  version = "1.0.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/plexus/plexus-root/1.0.3/plexus-root-1.0.3.pom";
      sha256 = "45363cc49c9419edf74f9f927deca5d6b08668ed985544165984aea8984a32c5";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
