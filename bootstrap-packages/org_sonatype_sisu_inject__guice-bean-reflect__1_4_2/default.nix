{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_sonatype_sisu_inject__guice-bean__pom__1_4_2
, org_sonatype_sisu__sisu-parent__pom__1_4_2
, org_slf4j__slf4j-api__1_6_1
, org_osgi__org_osgi_core__4_2_0
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_sisu__sisu-inject__pom__1_4_2
, org_sonatype_sisu__sisu-guice__2_1_7
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.sonatype.sisu.inject:guice-bean-reflect:1.4.2";
  groupId = "org.sonatype.sisu.inject";
  artifactId = "guice-bean-reflect";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-reflect/1.4.2/guice-bean-reflect-1.4.2.jar";
        sha256 = "d94bcdc005411b4ce14545621fbcee15aec8ed772b130a06e71b02b07e6f869d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/inject/guice-bean-reflect/1.4.2/guice-bean-reflect-1.4.2.pom";
        sha256 = "f1d15b7fe83c7460ce2629710ce20b5b5c0d0fda8be2be08288d93c7ba5e9ba5";
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
      drv = org_slf4j__slf4j-api__1_6_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_osgi__org_osgi_core__4_2_0;
      scope = "compile";
      optional = true;
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
