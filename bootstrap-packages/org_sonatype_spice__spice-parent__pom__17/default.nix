{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
}:
patchMavenJar {
  name = "org.sonatype.spice:spice-parent:pom:17";
  groupId = "org.sonatype.spice";
  artifactId = "spice-parent";
  version = "17";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/spice-parent/17/spice-parent-17.pom";
      sha256 = "9151f9a5b33ec36ee8778842fc56144fb0242d39cbcc42061b053b8909969bdf";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
