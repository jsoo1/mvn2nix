{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sonatype.forge:forge-parent:pom:38";
  groupId = "org.sonatype.forge";
  artifactId = "forge-parent";
  version = "38";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/forge/forge-parent/38/forge-parent-38.pom";
      sha256 = "a406af6d1f345158b4d37c0f80bc6ba7c2b1da7cd34d1be9ef118d5fe00f020f";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
