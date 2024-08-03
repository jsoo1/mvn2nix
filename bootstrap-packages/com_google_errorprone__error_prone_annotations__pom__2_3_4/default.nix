{
  lib
, pkgs
, patchMavenJar
, com_google_errorprone__error_prone_parent__pom__2_3_4
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_annotations:pom:2.3.4";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_annotations";
  version = "2.3.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.3.4/error_prone_annotations-2.3.4.pom";
      sha256 = "1326738a4b4f7ccacf607b866a11fb85193ef60f6a59461187ce7265f9be5bed";
    };
  };
  dependencies = [
    {
      drv = com_google_errorprone__error_prone_parent__pom__2_3_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
