{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-spi__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-spi:jar:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-spi";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-spi/1.0.0.v20140518/aether-spi-1.0.0.v20140518.jar";
      sha256 = "a3266d127a4e9f4aa9c4fa0986e31eec784e866f79112e1840d1667e17c10fb2";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
