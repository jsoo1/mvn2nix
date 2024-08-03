{
  lib
, pkgs
, patchMavenJar
, com_google_errorprone__error_prone_parent__pom__2_26_1
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_annotations:pom:2.26.1";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_annotations";
  version = "2.26.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.26.1/error_prone_annotations-2.26.1.pom";
      sha256 = "aea7e991e2dfdcb47f5fbd508587535f7802bcb9e2fc2d4ebb50be41b684da9f";
    };
  };
  dependencies = [
    {
      drv = com_google_errorprone__error_prone_parent__pom__2_26_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
