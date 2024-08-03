{
  lib
, pkgs
, patchMavenJar
, org_sat4j__org_sat4j_core__pom__2_0_4
}:
patchMavenJar {
  name = "org.sat4j:org.sat4j.core:jar:2.0.4";
  groupId = "org.sat4j";
  artifactId = "org.sat4j.core";
  version = "2.0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sat4j/org.sat4j.core/2.0.4/org.sat4j.core-2.0.4.jar";
      sha256 = "36e62acc0b98061fca35f62b3c9533a5a79597c2cf94e66372da9c531bae68fe";
    };
  };
  dependencies = [
    {
      drv = org_sat4j__org_sat4j_core__pom__2_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
