{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_slf4j__slf4j-api__1_6_1
, asm__asm__3_2
, org_sonatype_forge__forge-parent__pom__6
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:2.1.7";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "2.1.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/2.1.7/sisu-guice-2.1.7.jar";
        sha256 = "40275fbb68b75858d79e2c249673542e2a8ab0c68a185c88c3245f2ad79a9621";
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
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
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
    {
      drv = aopalliance__aopalliance__1_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
