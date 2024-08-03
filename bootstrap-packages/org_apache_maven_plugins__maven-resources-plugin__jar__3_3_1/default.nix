{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__jar__1_26
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven_shared__maven-filtering__jar__3_3_1
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_sonatype_plexus__plexus-build-api__jar__0_0_7
, commons-io__commons-io__jar__2_11_0
, org_apache_commons__commons-lang3__jar__3_12_0
, org_apache_maven_plugins__maven-resources-plugin__pom__3_3_1
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-resources-plugin:jar:3.3.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-resources-plugin";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-resources-plugin/3.3.1/maven-resources-plugin-3.3.1.jar";
      sha256 = "eb4069c7fe50a313b3f5295ccd214f30402f63971c26f443f7f3e798be8cc2a7";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-filtering__jar__3_3_1;
      scope = "compile";
      optional = false;
    }
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
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-resources-plugin__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
