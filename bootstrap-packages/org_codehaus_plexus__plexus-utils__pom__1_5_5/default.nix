{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:1.5.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.5/plexus-utils-1.5.5.pom";
      sha256 = "f860675cad10e561bfa175d5717e2d8617d40c62321086ca4a85c006a0fa30d1";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
