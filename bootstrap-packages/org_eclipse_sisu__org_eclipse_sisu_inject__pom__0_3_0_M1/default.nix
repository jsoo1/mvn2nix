{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-inject__pom__0_3_0_M1
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:pom:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.3.0.M1/org.eclipse.sisu.inject-0.3.0.M1.pom";
      sha256 = "d95ec995e81b6fb0dfe1f70c31652ecd270c7195ba452c2e75e27a112a81754f";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_3_0_M1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
