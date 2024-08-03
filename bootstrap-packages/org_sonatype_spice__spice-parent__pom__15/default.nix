{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__5
}:
patchMavenJar {
  name = "org.sonatype.spice:spice-parent:pom:15";
  groupId = "org.sonatype.spice";
  artifactId = "spice-parent";
  version = "15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/spice-parent/15/spice-parent-15.pom";
      sha256 = "13d15ddfe9946b8427bb7b4b081ab63962285eed0bf6fa5142aea25a46e15814";
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
