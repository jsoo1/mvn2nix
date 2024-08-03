{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compiler__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-api:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-api";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-api/2.8.4/plexus-compiler-api-2.8.4.pom";
      sha256 = "822b617cf487e06f520c28e14ade592563b30638a26b40acb4d5402efdf8cd26";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-compiler__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
