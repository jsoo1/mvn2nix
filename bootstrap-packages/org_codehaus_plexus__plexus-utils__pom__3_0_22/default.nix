{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.0.22";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.22";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.22/plexus-utils-3.0.22.pom";
      sha256 = "f20db219a9c2ebbfea479a1c58a252d795689b8627d43442748d8a21e0052f57";
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
