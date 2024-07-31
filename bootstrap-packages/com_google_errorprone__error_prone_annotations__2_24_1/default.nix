{
  lib
, pkgs
, patchMavenJar
, com_google_errorprone__error_prone_parent__pom__2_24_1
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_annotations:2.24.1";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_annotations";
  version = "2.24.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.24.1/error_prone_annotations-2.24.1.jar";
        sha256 = "19fe2f7155d20ea093168527999da98108103ee546d1e8b726bc4b27c31a3c30";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_annotations/2.24.1/error_prone_annotations-2.24.1.pom";
        sha256 = "756d0b3c3906599d973140eece266e0de8f4f192af14b19006af149fe90ef8d5";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_errorprone__error_prone_parent__pom__2_24_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
