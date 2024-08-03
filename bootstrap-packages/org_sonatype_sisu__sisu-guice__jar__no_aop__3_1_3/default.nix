{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__13_0_1
, org_sonatype_sisu__sisu-guice__pom__3_1_3
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:jar:no_aop:3.1.3";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.1.3";
  classifier = "no_aop";
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.1.3/sisu-guice-3.1.3-no_aop.jar";
      sha256 = "469e87f4675650eb205435be8137f53250b441b4963bdc2daffe1d8d269b816e";
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
      drv = com_google_guava__guava__jar__13_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__pom__3_1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
