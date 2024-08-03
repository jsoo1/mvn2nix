{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-api:jar:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-api";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-api/1.0.0.v20140518/aether-api-1.0.0.v20140518.jar";
      sha256 = "84b98521684ab22f9528470fa6d8ab68a230e1b211623c989ba7016c306eb773";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__pom__1_0_0_v20140518;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
