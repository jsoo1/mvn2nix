{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__5
}:
patchMavenJar {
  name = "org.sonatype.spice:spice-parent:pom:16";
  groupId = "org.sonatype.spice";
  artifactId = "spice-parent";
  version = "16";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/spice-parent/16/spice-parent-16.pom";
      sha256 = "258f43b5e805687302a5bb400856b972a573ec42a44f949641354a84b9243758";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
