{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-inject:pom:0.9.0.M3";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-inject";
  version = "0.9.0.M3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-inject/0.9.0.M3/sisu-inject-0.9.0.M3.pom";
      sha256 = "2e436563d5caea351bce5f0863ebc6376405cb65a6f664b255faad9e72e3b854";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
