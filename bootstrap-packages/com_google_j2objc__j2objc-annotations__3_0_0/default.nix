{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.j2objc:j2objc-annotations:3.0.0";
  groupId = "com.google.j2objc";
  artifactId = "j2objc-annotations";
  version = "3.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/j2objc/j2objc-annotations/3.0.0/j2objc-annotations-3.0.0.jar";
        sha256 = "88241573467ddca44ffd4d74aa04c2bbfd11bf7c17e0c342c94c9de7a70a7c64";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/j2objc/j2objc-annotations/3.0.0/j2objc-annotations-3.0.0.pom";
        sha256 = "23b3d039e168ad89dd114698e6dd7be383f4a2c577b8877d82c73a6515e74a17";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
