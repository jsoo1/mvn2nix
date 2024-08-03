{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_codehaus_plexus__plexus__pom__13
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:4.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.pom";
      sha256 = "a44c5479426dea0e7bfffd2ec3adf49c68515019788965c4d231fc3f04da4129";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
