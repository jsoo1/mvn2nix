{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__2_1_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.pom";
      sha256 = "0670b605255f7dc9a454daaec7912918ccf1b5475cbfca374363b51fcfd4ea00";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
