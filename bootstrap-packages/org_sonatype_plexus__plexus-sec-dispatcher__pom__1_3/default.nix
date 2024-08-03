{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__12
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-sec-dispatcher:pom:1.3";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-sec-dispatcher/1.3/plexus-sec-dispatcher-1.3.pom";
      sha256 = "d5e650c50ef6958c028ed024b59af04cf3d38e1453a77d542b6b484bc0f4ca0b";
    };
  };
  dependencies = [
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
