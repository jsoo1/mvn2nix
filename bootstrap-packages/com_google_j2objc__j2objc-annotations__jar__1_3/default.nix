{
  lib
, pkgs
, patchMavenJar
, com_google_j2objc__j2objc-annotations__pom__1_3
}:
patchMavenJar {
  name = "com.google.j2objc:j2objc-annotations:jar:1.3";
  groupId = "com.google.j2objc";
  artifactId = "j2objc-annotations";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/j2objc/j2objc-annotations/1.3/j2objc-annotations-1.3.jar";
      sha256 = "21af30c92267bd6122c0e0b4d20cccb6641a37eaf956c6540ec471d584e64a7b";
    };
  };
  dependencies = [
    {
      drv = com_google_j2objc__j2objc-annotations__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
