{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__15
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-cipher:pom:1.7";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-cipher";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-cipher/1.7/plexus-cipher-1.7.pom";
      sha256 = "82d7be6e6f96bb38ea05412a8a8732ab3977afbd15041d9e0dbb786414ca53d2";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
