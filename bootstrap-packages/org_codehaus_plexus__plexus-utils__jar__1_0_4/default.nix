{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_0_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.0.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.0.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.0.4/plexus-utils-1.0.4.jar";
      sha256 = "8c060125046528a08b5739d141c3c3f2032330ea07a92f72aac8f15a5bbdf39a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
