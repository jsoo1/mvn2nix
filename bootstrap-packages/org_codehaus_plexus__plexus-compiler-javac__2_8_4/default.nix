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
, org_codehaus_plexus__plexus-compilers__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-javac:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-javac";
  version = "2.8.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.8.4/plexus-compiler-javac-2.8.4.jar";
        sha256 = "a37a6d56a32bd0861d53d817c4c81088c87f9e4601caed01eaec4ede7fa4677a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.8.4/plexus-compiler-javac-2.8.4.pom";
        sha256 = "1b46ab52843b7446be98623a97f80db01c1ba4672fba1a41beb165436c0c0601";
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
    {
      drv = org_codehaus_plexus__plexus-compilers__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
