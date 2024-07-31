{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_sonatype_sisu_inject__guice-bean-reflect__1_4_2
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-bean-inject:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-bean-inject";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-inject/1.4.2/guice-bean-inject-1.4.2.jar";
        sha256 = "2ea6a0dbaefaff1a8d76e918377950c557a65c99b78e38408f30dcc990e164a4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-inject/1.4.2/guice-bean-inject-1.4.2.pom";
        sha256 = "d9cc0692563b71dce42414db2116ad6d3481731a33137353fa172f21d4ec5a79";
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
      drv = org_sonatype_sisu_inject__guice-bean__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-parent__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu_inject__guice-bean-reflect__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject__pom__1_4_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7;
      scope = "compile";
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
