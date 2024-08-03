{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-engine:pom:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-engine";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-engine/5.6.2/junit-jupiter-engine-5.6.2.pom";
      sha256 = "c6e6887988ca316556762b86ab60ecb644980474d9124a6f2b0edce7f34309d2";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
