{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__3_0_22
, org_sonatype_forge__forge-parent__pom__10
, org_codehaus_plexus__plexus__pom__4_0
, org_codehaus_plexus__plexus-components__pom__4_0
, org_codehaus_plexus__plexus-compiler-api__2_8_4
, org_codehaus_plexus__plexus-compiler__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compilers:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compilers";
  version = "2.8.4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compilers/2.8.4/plexus-compilers-2.8.4.pom";
        sha256 = "82a8175c836ce32d32077191111ebc256e2cbb7d907909edbb6b9b66e88521a6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__3_0_22;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-components__pom__4_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__2_8_4;
      scope = "compile";
      optional = false;
    }
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
