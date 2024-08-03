{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:3";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/3/forge-parent-3.pom";
      sha256 = "03263b68791fb11e7464ffcc2c3de7eaeae235de8c94827ce6407e0454d2aae9";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
