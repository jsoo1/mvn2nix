{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__0_9_0_M2
, org_eclipse_aether__aether-spi__jar__0_9_0_M2
, org_eclipse_aether__aether-util__jar__0_9_0_M2
, org_eclipse_aether__aether-impl__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-impl:jar:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-impl";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-impl/0.9.0.M2/aether-impl-0.9.0.M2.jar";
      sha256 = "637f5fb07d9b03957bc5f1a57b77a8202ba0a44f52a0d2c30e5d59b65e89ce48";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__0_9_0_M2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
