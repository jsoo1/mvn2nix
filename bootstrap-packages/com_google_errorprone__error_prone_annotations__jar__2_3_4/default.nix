{
  lib
, pkgs
, patchMavenJar
, com_google_errorprone__error_prone_annotations__pom__2_3_4
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_annotations:jar:2.3.4";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_annotations";
  version = "2.3.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.3.4/error_prone_annotations-2.3.4.jar";
      sha256 = "baf7d6ea97ce606c53e11b6854ba5f2ce7ef5c24dddf0afa18d1260bd25b002c";
    };
  };
  dependencies = [
    {
      drv = com_google_errorprone__error_prone_annotations__pom__2_3_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
