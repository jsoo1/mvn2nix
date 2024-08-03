{
  lib
, pkgs
, patchMavenJar
, com_google_j2objc__j2objc-annotations__pom__3_0_0
}:
patchMavenJar {
  name = "com.google.j2objc:j2objc-annotations:jar:3.0.0";
  groupId = "com.google.j2objc";
  artifactId = "j2objc-annotations";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/j2objc/j2objc-annotations/3.0.0/j2objc-annotations-3.0.0.jar";
      sha256 = "88241573467ddca44ffd4d74aa04c2bbfd11bf7c17e0c342c94c9de7a70a7c64";
    };
  };
  dependencies = [
    {
      drv = com_google_j2objc__j2objc-annotations__pom__3_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
