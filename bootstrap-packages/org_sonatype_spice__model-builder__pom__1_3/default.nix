{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__spice-parent__pom__10
}:
patchMavenJar {
  name = "org.sonatype.spice:model-builder:pom:1.3";
  groupId = "org.sonatype.spice";
  artifactId = "model-builder";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/spice/model-builder/1.3/model-builder-1.3.pom";
      sha256 = "0d2cc363cdfc6c102203adb6a5c138c195eaf1198527a09e6a17aa0227a66bcd";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__spice-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
