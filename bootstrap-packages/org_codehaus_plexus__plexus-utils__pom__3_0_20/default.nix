{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.0.20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.20";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.20/plexus-utils-3.0.20.pom";
      sha256 = "8ded3e5d2d85f09b4b3bb1ae52b125bf28e02bab1a935787c548d97cb555912a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
