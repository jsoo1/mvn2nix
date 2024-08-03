{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:jar:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.9.0.M2/org.eclipse.sisu.inject-0.9.0.M2.jar";
      sha256 = "9b62bcfc352a2ec87da8b01e37c952a54d358bbb1af3f212648aeafe7ab2dbb5";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
