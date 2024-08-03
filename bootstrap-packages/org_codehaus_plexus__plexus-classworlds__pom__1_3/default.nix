{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:1.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.3/plexus-classworlds-1.3.pom";
      sha256 = "f77a20790dcdedcb3e555b126d71835b8c7236261a6bec671e9a2541d9c5c360";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
