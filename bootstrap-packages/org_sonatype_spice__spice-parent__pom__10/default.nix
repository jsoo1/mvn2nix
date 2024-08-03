{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__3
}:
patchMavenJar {
  name = "org.sonatype.spice:spice-parent:pom:10";
  groupId = "org.sonatype.spice";
  artifactId = "spice-parent";
  version = "10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/spice-parent/10/spice-parent-10.pom";
      sha256 = "683c012c6bf5e1e31b232b3755c027ccd829692a09c8216652b414b09d4ae623";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
