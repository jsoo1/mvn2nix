{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_parent:pom:2.26.1";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_parent";
  version = "2.26.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_parent/2.26.1/error_prone_parent-2.26.1.pom";
      sha256 = "4a6ad00d31b0a5adcd9a4f605065d5b445fae4a04cbf827e5d1ac1077e2f814d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
