{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google:google:pom:5";
  groupId = "com.google";
  artifactId = "google";
  version = "5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/google/5/google-5.pom";
      sha256 = "e09d345e73ca3fbca7f3e05f30deb74e9d39dd6b79a93fee8c511f23417b6828";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
