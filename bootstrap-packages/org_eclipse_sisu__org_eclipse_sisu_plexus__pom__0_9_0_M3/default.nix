{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_eclipse_sisu__sisu-inject__pom__0_9_0_M3
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:pom:0.9.0.M3";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.9.0.M3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.9.0.M3/org.eclipse.sisu.plexus-0.9.0.M3.pom";
      sha256 = "70596c950b0b5e99ef7942a5cfbd07dc3e76475b3332be3400a0741a7eb77458";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_9_0_M3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
