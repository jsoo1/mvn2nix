{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__4
}:
patchMavenJar {
  name = "org.sonatype.spice:spice-parent:pom:12";
  groupId = "org.sonatype.spice";
  artifactId = "spice-parent";
  version = "12";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/spice-parent/12/spice-parent-12.pom";
        sha256 = "21a19b26dbe5c38ddb5114cf4eadbf5ccb411bc6b128fdd5949b1ccb12f3683e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
