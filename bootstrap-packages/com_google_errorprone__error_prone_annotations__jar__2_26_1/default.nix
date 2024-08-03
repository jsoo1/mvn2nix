{
  lib
, pkgs
, patchMavenJar
, com_google_errorprone__error_prone_annotations__pom__2_26_1
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_annotations:jar:2.26.1";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_annotations";
  version = "2.26.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.26.1/error_prone_annotations-2.26.1.jar";
      sha256 = "de25f2d9a2156529bd765f51d8efdfc0dfa7301e04efb9cc75b7f10cf5d0e0fb";
    };
  };
  dependencies = [
    {
      drv = com_google_errorprone__error_prone_annotations__pom__2_26_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
