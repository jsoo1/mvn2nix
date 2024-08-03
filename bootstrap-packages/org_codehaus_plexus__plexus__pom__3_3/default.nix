{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:3.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "3.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/3.3/plexus-3.3.pom";
      sha256 = "3d2ad3a8bfd49d95952443afe2c14183136811019435bf16eed40796b2210ad2";
    };
  };
  dependencies = [
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
