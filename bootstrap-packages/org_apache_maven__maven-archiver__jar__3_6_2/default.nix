{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-archiver__jar__4_9_2
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_codehaus_plexus__plexus-io__jar__3_4_2
, commons-io__commons-io__jar__2_15_1
, org_apache_commons__commons-compress__jar__1_26_1
, org_apache_commons__commons-lang3__jar__3_14_0
, commons-codec__commons-codec__jar__1_16_1
, org_slf4j__slf4j-api__jar__1_7_36
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-11
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, org_apache_maven__maven-archiver__pom__3_6_2
}:
patchMavenJar {
  name = "org.apache.maven:maven-archiver:jar:3.6.2";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.6.2/maven-archiver-3.6.2.jar";
      sha256 = "1f895a587df4844d9b7565e8e9a6352afe1d55532458a0dbeb746bc1d02e9216";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-archiver__jar__4_9_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
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
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-archiver__pom__3_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
