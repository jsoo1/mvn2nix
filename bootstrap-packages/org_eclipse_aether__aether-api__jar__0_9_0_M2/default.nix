{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether-api__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-api:jar:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-api";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-api/0.9.0.M2/aether-api-0.9.0.M2.jar";
      sha256 = "e220097cffad96c2963ab12652ff8833ec6f40143d509f0a2ea59d22209b6ecd";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_aether__aether-api__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
