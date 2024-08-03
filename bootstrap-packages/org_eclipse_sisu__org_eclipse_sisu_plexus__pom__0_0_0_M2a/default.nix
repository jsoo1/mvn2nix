{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-plexus__pom__0_0_0_M2a
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.plexus:pom:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.plexus";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.plexus/0.0.0.M2a/org.eclipse.sisu.plexus-0.0.0.M2a.pom";
      sha256 = "215b1dd8b624097f9e4b519031011e8baf74dbb78444640d4a5e660a858c3e54";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-plexus__pom__0_0_0_M2a;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
