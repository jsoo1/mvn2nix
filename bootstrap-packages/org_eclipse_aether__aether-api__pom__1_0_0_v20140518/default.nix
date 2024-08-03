{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__1_0_0_v20140518
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-api:pom:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether-api";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-api/1.0.0.v20140518/aether-api-1.0.0.v20140518.pom";
      sha256 = "2cbb6b666dd1518153afd4939b126c2336506cf3b1bc4541263c09ba87c34b96";
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
