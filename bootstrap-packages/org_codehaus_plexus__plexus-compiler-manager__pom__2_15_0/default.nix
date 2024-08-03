{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus-compiler__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-manager:pom:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-manager";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.15.0/plexus-compiler-manager-2.15.0.pom";
      sha256 = "12bd3bfb803d2004ed8318583ac7b272115a8b9303eabcd100808c54d44d2017";
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
