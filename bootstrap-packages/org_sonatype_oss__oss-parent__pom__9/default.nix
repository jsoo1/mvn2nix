{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.oss:oss-parent:pom:9";
  groupId = "org.sonatype.oss";
  artifactId = "oss-parent";
  version = "9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/oss/oss-parent/9/oss-parent-9.pom";
      sha256 = "fb40265f982548212ff82e362e59732b2187ec6f0d80182885c14ef1f982827a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
