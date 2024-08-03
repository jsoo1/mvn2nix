{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-impl:pom:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-impl";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-impl/1.0.0.v20140518/aether-impl-1.0.0.v20140518.pom";
      sha256 = "5a80a73241d6cf2e982688b0fe0dacd238d920d81d84fa9435d6d2dd595184e4";
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
