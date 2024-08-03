{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-spi__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-spi:jar:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-spi";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-spi/0.9.0.M2/aether-spi-0.9.0.M2.jar";
      sha256 = "b7b78090d4e708ccbc42b039c8c36c8efb19296146584a14d5bb3e66935ddfe4";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
