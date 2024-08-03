{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-parent__pom__3_1_3
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:pom:3.1.3";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.1.3/sisu-guice-3.1.3.pom";
      sha256 = "a9739c4171714c7a175d52b02d42a096a6439b30281844590a1279e030d67d62";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-parent__pom__3_1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
