{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_apache_maven_shared__maven-shared-components__pom__39
, org_slf4j__slf4j-api__1_7_36
, org_apache__apache__pom__29
, org_sonatype_plexus__plexus-build-api__0_0_7
, org_codehaus_plexus__plexus-utils__3_5_1
, commons-io__commons-io__2_11_0
, org_apache_maven__maven-parent__pom__39
, org_codehaus_plexus__plexus-interpolation__1_26
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-filtering:3.3.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-filtering";
  version = "3.3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.1/maven-filtering-3.3.1.jar";
        sha256 = "b12663187d9ffc6a1ee76139c0ef497fe9400efbe2ebe01616fe2703656fb4f0";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.1/maven-filtering-3.3.1.pom";
        sha256 = "a1d90278a9c3effef6c45db86c660749d2910d8d7361ed81983565950f667e85";
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
      drv = org_apache_maven_shared__maven-shared-components__pom__39;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_26;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
