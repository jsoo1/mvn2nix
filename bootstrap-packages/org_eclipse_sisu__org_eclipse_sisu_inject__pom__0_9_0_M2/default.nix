{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-inject__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:pom:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.9.0.M2/org.eclipse.sisu.inject-0.9.0.M2.pom";
      sha256 = "05666f27941117ccadfab6329118c1c348f8b838ce89ed23182c151cb2943ee9";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
