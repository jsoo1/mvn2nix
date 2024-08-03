{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-spi:pom:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-spi";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-spi/0.9.0.M2/aether-spi-0.9.0.M2.pom";
      sha256 = "699bd0427835c5e788f972473c2637b587ef79777fa8bd97d7189b956a619cf5";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
