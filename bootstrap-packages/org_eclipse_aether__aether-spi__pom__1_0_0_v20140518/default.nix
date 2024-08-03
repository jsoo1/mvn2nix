{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-spi:pom:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-spi";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-spi/1.0.0.v20140518/aether-spi-1.0.0.v20140518.pom";
      sha256 = "7d547087459c89b8717ec5081aa45922d605299da39e32a811041db1b7e2514e";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
