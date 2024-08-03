{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:3.3.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/3.3.1/plexus-3.3.1.pom";
      sha256 = "6ec96f889bc29250f90b167c14e547f1b05aa23565c63f9079595befbde816bb";
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
