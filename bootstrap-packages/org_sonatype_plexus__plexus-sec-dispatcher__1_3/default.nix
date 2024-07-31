{
  lib
, pkgs
, patchMavenJar
, org_sonatype_plexus__plexus-cipher__1_4
, org_sonatype_forge__forge-parent__pom__4
, org_codehaus_plexus__plexus-utils__1_5_5
, org_sonatype_spice__spice-parent__pom__12
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-sec-dispatcher:1.3";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "1.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-sec-dispatcher/1.3/plexus-sec-dispatcher-1.3.jar";
        sha256 = "3b0559bb8432f28937efe6ca193ef54a8506d0075d73fd7406b9b116c6a11063";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-sec-dispatcher/1.3/plexus-sec-dispatcher-1.3.pom";
        sha256 = "d5e650c50ef6958c028ed024b59af04cf3d38e1453a77d542b6b484bc0f4ca0b";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_spice__spice-parent__pom__12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
