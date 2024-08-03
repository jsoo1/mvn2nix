{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-spi__jar__1_0_0_v20140518
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_aether__aether-impl__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-impl:jar:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-impl";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-impl/1.0.0.v20140518/aether-impl-1.0.0.v20140518.jar";
      sha256 = "9a9b60e685385225f08e662cb9f60d96610b0987f0f47bbf3f0c92df8a897d00";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
