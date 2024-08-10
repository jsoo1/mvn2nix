{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.3.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.1/plexus-utils-3.3.1.pom";
      sha256 = "5e583878df905b5f33a230ef690a52b8f19dab9cc892bedee069f3d8af4e960a";
    };
  };
  dependencies = [
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
