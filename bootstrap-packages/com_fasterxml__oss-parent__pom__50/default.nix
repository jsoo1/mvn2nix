{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.fasterxml:oss-parent:pom:50";
  groupId = "com.fasterxml";
  artifactId = "oss-parent";
  version = "50";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/oss-parent/50/oss-parent-50.pom";
        sha256 = "f5da55dd7b88fb170c46801d17774a652fb2f4581fb5b1d0a5fc86aa182b8577";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
