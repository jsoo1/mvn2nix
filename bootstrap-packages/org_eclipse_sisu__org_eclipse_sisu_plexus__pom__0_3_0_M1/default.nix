{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-plexus__pom__0_3_0_M1
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:pom:0.3.0.M1";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.3.0.M1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.0.M1/org.eclipse.sisu.plexus-0.3.0.M1.pom";
      sha256 = "68121f46f0f1212e411378abb65c675bc362343101cc9da6a8936f3d3ea083fa";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-plexus__pom__0_3_0_M1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
