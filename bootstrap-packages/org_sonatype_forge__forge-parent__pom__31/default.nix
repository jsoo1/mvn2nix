{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:31";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "31";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/31/forge-parent-31.pom";
      sha256 = "b68712fcae064a35a0de7a93581685080737723e4fb3a8a02a5b0ad92278432b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
