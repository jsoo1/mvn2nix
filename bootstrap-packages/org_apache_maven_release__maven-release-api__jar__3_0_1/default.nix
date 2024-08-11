{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_release__maven-release-api__pom__3_0_1
}:
patchMavenJar {
  name = "maven-release-api";
  coordinates = "org.apache.maven.release:maven-release-api:jar:3.0.1";
  groupId = "org.apache.maven.release";
  artifactId = "maven-release-api";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/release/maven-release-api/3.0.1/maven-release-api-3.0.1.jar";
      sha256 = "d8790eb39c4221e2fcea6c8cb8e75d98dff28278631039fe0968032dbf92602c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
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
      drv = org_apache_maven_release__maven-release-api__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
