{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_1_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.1.1/plexus-utils-3.1.1.jar";
      sha256 = "d1f74a7a0d91eb82536d71175b177bf21b1d7d286376b0ea5ba8a194265ba90b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
