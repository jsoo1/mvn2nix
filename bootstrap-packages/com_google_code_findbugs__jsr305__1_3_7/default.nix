{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:1.3.7";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "1.3.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/1.3.7/jsr305-1.3.7.jar";
        sha256 = "1e7f53fa5b8b5c807e986ba335665da03f18d660802d8bf061823089d1bee468";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/1.3.7/jsr305-1.3.7.pom";
        sha256 = "e3c361c8680a9101c171893ebc4c58193e3125901a2ad1118ed82db309c2dcbd";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
