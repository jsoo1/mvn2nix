{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
, org_sonatype_forge__forge-parent__pom__10
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.0.15";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.15";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.15/plexus-utils-3.0.15.jar";
        sha256 = "d0be76c5ce910134a7e07fd2aa48d9b677800ab0e95873f314b445c6f177c973";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.15/plexus-utils-3.0.15.pom";
        sha256 = "b4fe0bed469e2e973c661b4b7647db374afee7bda513560e96cd780132308f0b";
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
