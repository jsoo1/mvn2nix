{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.fasterxml:oss-parent:pom:38";
  groupId = "com.fasterxml";
  artifactId = "oss-parent";
  version = "38";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/oss-parent/38/oss-parent-38.pom";
        sha256 = "c83f8f45dfdca8d0b6b3661c60b3f84780f671b12e06f91ad5d1c1a1d1f966e8";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
