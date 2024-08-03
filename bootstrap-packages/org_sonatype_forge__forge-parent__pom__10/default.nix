{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:10";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/10/forge-parent-10.pom";
      sha256 = "c14fb9c32b59cc03251f609416db7c0cff01f811edcccb4f6a865d6e7046bd0b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
