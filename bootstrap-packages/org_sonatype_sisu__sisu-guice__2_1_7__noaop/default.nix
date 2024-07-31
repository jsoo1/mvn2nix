{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__1_6_1
, asm__asm__3_2
, org_sonatype_forge__forge-parent__pom__6
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:2.1.7:noaop";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "2.1.7";
  classifier = "noaop";
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/2.1.7/sisu-guice-2.1.7-noaop.jar";
        sha256 = "240113a2f22fd1f0b182b32baecf0e7876b3a8e41f3c4da3335eeb9ffb24b9f4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/2.1.7/sisu-guice-2.1.7.pom";
        sha256 = "2b3f02f2d0ec3e95884f9ab415596ce627492469c2d8fd75e3fb00fb69532c44";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__1_6_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = asm__asm__3_2;
      scope = "compile";
      optional = true;
    }
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
