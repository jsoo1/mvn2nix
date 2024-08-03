{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-impl:pom:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-impl";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-impl/0.9.0.M2/aether-impl-0.9.0.M2.pom";
      sha256 = "0b75783fe703358930e2f3df3c1adbba911d65913f9f3a582159f7a5da3f9c19";
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
