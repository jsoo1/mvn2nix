{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:4.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.1/plexus-utils-4.0.1.pom";
      sha256 = "bc4235a95cd1ebae42644c81ebba9c1d4c52565f81e96ab204b6e56e3e378cc1";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
