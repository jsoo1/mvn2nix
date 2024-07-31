{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_aether__aether-api__1_7
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-spi:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-spi";
  version = "1.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-spi/1.7/aether-spi-1.7.jar";
        sha256 = "f54a0a28ce3d62af0e1cfe41dde616f645c28e452e77f77b78bc36e74d5e1a69";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-spi/1.7/aether-spi-1.7.pom";
        sha256 = "a5a8a19df914af051d29eeb4084189a118c8c301054df41472d9f180ddcc6747";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-api__1_7;
      scope = "compile";
      optional = false;
    }
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
