{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_parent:pom:2.24.1";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_parent";
  version = "2.24.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_parent/2.24.1/error_prone_parent-2.24.1.pom";
        sha256 = "cb9f3d580502ece5e12429d7f7ac75fe47ab85d6adf75cddf86fa5a24aefa48f";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
