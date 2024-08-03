{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-inject__pom__0_0_0_M2a
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:pom:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.0.0.M2a/org.eclipse.sisu.inject-0.0.0.M2a.pom";
      sha256 = "77df04bd50d231861e65945c4edd889456f093fe6b316f6ee906bd75c45108c4";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_0_0_M2a;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
