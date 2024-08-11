{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-hg__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-provider-hg";
  coordinates = "org.apache.maven.scm:maven-scm-provider-hg:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-hg";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-hg/2.0.0/maven-scm-provider-hg-2.0.0.jar";
      sha256 = "73e14ab476df757fc4f71131cc78d2b4afd648580a1e1cdb60e56543afd24251";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-hg__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
