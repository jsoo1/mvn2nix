{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-parent__pom__3_2_3
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:pom:3.2.3";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.2.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.2.3/sisu-guice-3.2.3.pom";
      sha256 = "4a14ec03fa5fdfef34b595d3fabb83832423a5d6e9b31571e44c8a48304014df";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-parent__pom__3_2_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
