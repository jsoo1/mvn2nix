{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, org_sonatype_sisu__sisu-guice__pom__2_1_7
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:jar:noaop:2.1.7";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "2.1.7";
  classifier = "noaop";
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/2.1.7/sisu-guice-2.1.7-noaop.jar";
      sha256 = "240113a2f22fd1f0b182b32baecf0e7876b3a8e41f3c4da3335eeb9ffb24b9f4";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__pom__2_1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
