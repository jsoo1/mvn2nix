{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__16_0_1
, org_sonatype_sisu__sisu-guice__pom__3_2_3
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:jar:no_aop:3.2.3";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.2.3";
  classifier = "no_aop";
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.2.3/sisu-guice-3.2.3-no_aop.jar";
      sha256 = "004af7012b6d11ab585ae841130ff091dcad6531d7bf13db4d7deac91589eef4";
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
      drv = com_google_guava__guava__jar__16_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__pom__3_2_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
