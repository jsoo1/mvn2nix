{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:2.0.1";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "2.0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/2.0.1/jsr305-2.0.1.jar";
        sha256 = "1e7f53fa5b8b5c807e986ba335665da03f18d660802d8bf061823089d1bee468";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/2.0.1/jsr305-2.0.1.pom";
        sha256 = "02c12c3c2ae12dd475219ff691c82a4d9ea21f44bc594a181295bf6d43dcfbb0";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
