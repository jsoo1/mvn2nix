{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:2.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.1/plexus-utils-2.1.pom";
      sha256 = "9f4ac6987113d09099bf43b846d2ec1d5e7a8091a6185f1f16d68e845f681243";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
