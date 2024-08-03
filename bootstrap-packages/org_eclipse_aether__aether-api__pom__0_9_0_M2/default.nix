{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-api:pom:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-api";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-api/0.9.0.M2/aether-api-0.9.0.M2.pom";
      sha256 = "579403170312127a59f7192cc61096ab17b7be7c3178db54a9c5bf713fbcf594";
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
