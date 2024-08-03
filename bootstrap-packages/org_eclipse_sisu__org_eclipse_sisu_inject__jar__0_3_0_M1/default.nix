{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_3_0_M1
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:jar:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.3.0.M1/org.eclipse.sisu.inject-0.3.0.M1.jar";
      sha256 = "3a878482877e66337ab8461e7f55ab9d701f8090f889ad8938cceefa33193fe4";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__pom__0_3_0_M1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
