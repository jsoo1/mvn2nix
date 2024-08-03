{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-spi:pom:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-spi";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-spi/1.7/aether-spi-1.7.pom";
      sha256 = "a5a8a19df914af051d29eeb4084189a118c8c301054df41472d9f180ddcc6747";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_aether__aether-parent__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
