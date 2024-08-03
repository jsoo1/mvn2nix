{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-plexus__pom__0_9_0_M2
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:pom:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.9.0.M2/org.eclipse.sisu.plexus-0.9.0.M2.pom";
      sha256 = "8feb5693e2d2b2379f9f9f483f2d2b47ab54f0f0ed22cb232e968c544f778752";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-plexus__pom__0_9_0_M2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
