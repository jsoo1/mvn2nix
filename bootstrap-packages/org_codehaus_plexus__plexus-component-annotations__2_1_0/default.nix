{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__2_1_0
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.jar";
        sha256 = "bde3617ce9b5bcf9584126046080043af6a4b3baea40a3b153f02e7bbc32acac";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.pom";
        sha256 = "0670b605255f7dc9a454daaec7912918ccf1b5475cbfca374363b51fcfd4ea00";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_1_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
