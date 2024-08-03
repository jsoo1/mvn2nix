{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus-compiler__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compilers:pom:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compilers";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compilers/2.15.0/plexus-compilers-2.15.0.pom";
      sha256 = "1ce14d30276866a9493a2c72e42f990a2e3c1bd794026ccd9830475a12d9a91d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler__pom__2_15_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
