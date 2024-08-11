{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-archiver__jar__4_8_0
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_codehaus_plexus__plexus-io__jar__3_4_1
, commons-io__commons-io__jar__2_13_0
, org_apache_commons__commons-compress__jar__1_23_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-5
, org_codehaus_plexus__plexus-interpolation__jar__1_26
, org_apache_maven__maven-archiver__pom__3_6_1
}:
patchMavenJar {
  name = "maven-archiver";
  coordinates = "org.apache.maven:maven-archiver:jar:3.6.1";
  groupId = "org.apache.maven";
  artifactId = "maven-archiver";
  version = "3.6.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-archiver/3.6.1/maven-archiver-3.6.1.jar";
      sha256 = "a5fd6e2121c0a3f5e5cafdf336e21ba2e67a2cf7e781f69e3b8ae28215832823";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-archiver__jar__4_8_0;
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
      drv = org_codehaus_plexus__plexus-io__jar__3_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_13_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_23_0;
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
      drv = com_github_luben__zstd-jni__jar__1_5_5-5;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-archiver__pom__3_6_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
