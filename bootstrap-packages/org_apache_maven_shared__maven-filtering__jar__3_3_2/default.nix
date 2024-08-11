{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_sonatype_plexus__plexus-build-api__jar__0_0_7
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, commons-io__commons-io__jar__2_15_1
, org_apache_commons__commons-lang3__jar__3_14_0
, org_apache_maven_shared__maven-filtering__pom__3_3_2
}:
patchMavenJar {
  name = "maven-filtering";
  coordinates = "org.apache.maven.shared:maven-filtering:jar:3.3.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-filtering";
  version = "3.3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.2/maven-filtering-3.3.2.jar";
      sha256 = "96739b6e16cd6b04529f4527553e92909090f42c222e2401e1df7e7da0cd1e50";
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
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-filtering__pom__3_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
