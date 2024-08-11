{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "oss-parent";
  coordinates = "org.sonatype.oss:oss-parent:pom:5";
  groupId = "org.sonatype.oss";
  artifactId = "oss-parent";
  version = "5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/oss/oss-parent/5/oss-parent-5.pom";
      sha256 = "1678d4120a585d8a630131aeec4c524d928398583b7eab616ee7d5a87f520d3d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
