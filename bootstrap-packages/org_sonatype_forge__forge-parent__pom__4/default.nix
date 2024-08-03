{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:4";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/4/forge-parent-4.pom";
      sha256 = "1838d132479005b4b7459b798e9d9915515090c288082fdcd86db0b10983a24c";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
