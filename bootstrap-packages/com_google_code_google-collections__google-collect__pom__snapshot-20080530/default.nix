{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.code.google-collections:google-collect:pom:snapshot-20080530";
  groupId = "com.google.code.google-collections";
  artifactId = "google-collect";
  version = "snapshot-20080530";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/google-collections/google-collect/snapshot-20080530/google-collect-snapshot-20080530.pom";
      sha256 = "7d131d6a082a33363bdfbf55d2fee2219d9bc8d1c455cc3f7c6403cf2a4496a5";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
