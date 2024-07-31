{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__1_4_5
, org_codehaus_plexus__plexus-components__pom__1_1_12
, org_codehaus_plexus__plexus__pom__1_0_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-i18n:1.0-beta-10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-i18n";
  version = "1.0-beta-10";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.jar";
        sha256 = "b87f25b512ffafcafbf4a05ab943812e9c6915291370c6b46016eb3836886c41";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.pom";
        sha256 = "4073a94aadf4d511d85bce597c09f8e9355a458ccbb07f2ed82f4c39303fe374";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__1_4_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
