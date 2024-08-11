{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-util__jar__1_4_1
, org_apache_maven_resolver__maven-resolver-api__jar__1_4_1
, org_apache_maven_shared__maven-common-artifact-filters__jar__3_3_2
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, commons-io__commons-io__jar__2_15_1
, org_apache_maven_shared__maven-filtering__jar__3_3_2
, javax_inject__javax_inject__jar__1
, org_sonatype_plexus__plexus-build-api__jar__0_0_7
, org_apache_commons__commons-lang3__jar__3_14_0
, org_codehaus_plexus__plexus-io__jar__3_4_2
, org_codehaus_plexus__plexus-archiver__jar__4_9_2
, org_apache_commons__commons-compress__jar__1_26_1
, commons-codec__commons-codec__jar__1_16_1
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-11
, org_apache_maven__maven-archiver__jar__3_6_1
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_apache_maven_plugins__maven-assembly-plugin__pom__3_7_1
}:
patchMavenJar {
  name = "maven-assembly-plugin";
  coordinates = "org.apache.maven.plugins:maven-assembly-plugin:jar:3.7.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-assembly-plugin";
  version = "3.7.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.jar";
      sha256 = "1d65f810ae5de6141ff73c659dae6f9db6bad83c76b811d977eb3798a6dc1d0f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__jar__3_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
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
      drv = org_apache_maven_shared__maven-filtering__jar__3_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__jar__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-archiver__jar__4_9_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__jar__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__jar__1_9;
      scope = "runtime";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__jar__1_5_5-11;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-archiver__jar__3_6_1;
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
      drv = org_apache_maven_plugins__maven-assembly-plugin__pom__3_7_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
