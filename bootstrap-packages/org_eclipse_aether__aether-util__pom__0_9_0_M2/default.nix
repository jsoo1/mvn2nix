{
  lib
, pkgs
, patchMavenJar
, org_eclipse_aether__aether__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.aether:aether-util:pom:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether-util";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether-util/0.9.0.M2/aether-util-0.9.0.M2.pom";
      sha256 = "8e1f27e5463f12e4e1d7b242562239c42065e9bcdbf01629399e265035606986";
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
