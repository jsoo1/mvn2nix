{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "net.java:jvnet-parent:pom:1";
  groupId = "net.java";
  artifactId = "jvnet-parent";
  version = "1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/net/java/jvnet-parent/1/jvnet-parent-1.pom";
        sha256 = "281440811268e65d9e266b3cc898297e214e04f09740d0386ceeb4a8923d63bf";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
