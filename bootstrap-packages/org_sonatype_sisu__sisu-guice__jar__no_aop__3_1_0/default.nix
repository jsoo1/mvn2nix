{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, org_sonatype_sisu__sisu-guava__jar__0_9_9
, org_sonatype_sisu__sisu-guice__pom__3_1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guice:jar:no_aop:3.1.0";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guice";
  version = "3.1.0";
  classifier = "no_aop";
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guice/3.1.0/sisu-guice-3.1.0-no_aop.jar";
      sha256 = "4b76079f35407e5682aac1ecbe67afd5f430ae619044a9d6a413666a45750c25";
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
      drv = org_sonatype_sisu__sisu-guava__jar__0_9_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
