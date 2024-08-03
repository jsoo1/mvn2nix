{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler:pom:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler/2.15.0/plexus-compiler-2.15.0.pom";
      sha256 = "9c9b62a7703d4994b60fb7f9e42805f9abc798d1397e4d22c1118cd12aa678d8";
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
