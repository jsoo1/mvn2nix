{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.0.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.10/plexus-utils-3.0.10.pom";
      sha256 = "1f4ed909a012a1ae3eec7b649ae84c0425a05cbb05c48b6a644d122fb6f6bc4b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
