{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus-compiler__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-api:pom:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-api";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-api/2.15.0/plexus-compiler-api-2.15.0.pom";
      sha256 = "4c89cab0505b0ac901197d2dd1363fe5e26bcbfd43e99dd21a8ae023b443cc4e";
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
