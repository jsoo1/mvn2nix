{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_sonatype_plexus__plexus-build-api__jar__0_0_7
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_codehaus_plexus__plexus-interpolation__jar__1_26
, commons-io__commons-io__jar__2_11_0
, org_apache_maven_shared__maven-filtering__pom__3_3_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-filtering:jar:3.3.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-filtering";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.1/maven-filtering-3.3.1.jar";
      sha256 = "b12663187d9ffc6a1ee76139c0ef497fe9400efbe2ebe01616fe2703656fb4f0";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__jar__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-filtering__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
