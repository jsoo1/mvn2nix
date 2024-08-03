{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__file-management__jar__3_1_0
, commons-io__commons-io__jar__2_16_1
, org_apache_maven__maven-archiver__jar__3_6_2
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, org_codehaus_plexus__plexus-utils__jar__4_0_1
, org_codehaus_plexus__plexus-archiver__jar__4_9_2
, org_codehaus_plexus__plexus-io__jar__3_4_2
, org_apache_commons__commons-compress__jar__1_26_1
, org_apache_commons__commons-lang3__jar__3_14_0
, commons-codec__commons-codec__jar__1_16_1
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-11
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_plugins__maven-jar-plugin__pom__3_4_1
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-jar-plugin:jar:3.4.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-jar-plugin";
  version = "3.4.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-jar-plugin/3.4.1/maven-jar-plugin-3.4.1.jar";
      sha256 = "25e0a5b55b872d95e3a09a5d825bc1061f5ce25ee81f147e623405d8ebedfa5f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__file-management__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-archiver__jar__3_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-archiver__jar__4_9_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_4_2;
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
      drv = org_apache_maven_plugins__maven-jar-plugin__pom__3_4_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
