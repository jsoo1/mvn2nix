{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:6";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "6";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/6/forge-parent-6.pom";
        sha256 = "9c5f7cd5226ac8c3798cb1f800c031f7dedc1606dc50dc29567877c8224459a7";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
