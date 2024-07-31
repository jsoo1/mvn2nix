{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.oss:oss-parent:pom:7";
  groupId = "org.sonatype.oss";
  artifactId = "oss-parent";
  version = "7";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/oss/oss-parent/7/oss-parent-7.pom";
        sha256 = "b51f8867c92b6a722499557fc3a1fdea77bdf9ef574722fe90ce436a29559454";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
