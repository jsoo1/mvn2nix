{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu_inject__guice-parent__pom__3_1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:pom:3.1.0";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.1.0/sisu-guice-3.1.0.pom";
      sha256 = "28a7c38bd751e9e2a9f8d13ddf876266f90f9d6e29c9178b524828afbc5e45f4";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu_inject__guice-parent__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
