{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__6
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:pom:2.1.7";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "2.1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/2.1.7/sisu-guice-2.1.7.pom";
      sha256 = "2b3f02f2d0ec3e95884f9ab415596ce627492469c2d8fd75e3fb00fb69532c44";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
