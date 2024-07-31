{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.fasterxml:oss-parent:pom:56";
  groupId = "com.fasterxml";
  artifactId = "oss-parent";
  version = "56";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/oss-parent/56/oss-parent-56.pom";
        sha256 = "fd491f78857424106d2e3d605bcd799b53d31a565cdc868463ca7e875db45a50";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
