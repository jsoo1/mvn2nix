{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus-compilers__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-javac:pom:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-javac";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.15.0/plexus-compiler-javac-2.15.0.pom";
      sha256 = "bbe796c5fe109736980aff79860548d828abd27b36872b80a0e831642b65f328";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compilers__pom__2_15_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
