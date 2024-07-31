{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
, org_sonatype_forge__forge-parent__pom__10
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.0.22";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.22";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.22/plexus-utils-3.0.22.jar";
        sha256 = "0f31c44b275f87e56d46a582ce96d03b9e2ab344cf87c4e268b34d3ad046beab";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.22/plexus-utils-3.0.22.pom";
        sha256 = "f20db219a9c2ebbfea479a1c58a252d795689b8627d43442748d8a21e0052f57";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_spice__spice-parent__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
