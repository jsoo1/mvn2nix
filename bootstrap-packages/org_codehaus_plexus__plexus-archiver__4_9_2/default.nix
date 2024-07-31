{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_apache_commons__commons-compress__1_26_1
, commons-codec__commons-codec__1_16_1
, org_slf4j__slf4j-api__1_7_36
, com_github_luben__zstd-jni__1_5_5-11
, org_codehaus_plexus__plexus__pom__17
, org_apache_commons__commons-lang3__3_14_0
, org_codehaus_plexus__plexus-io__3_4_2
, org_iq80_snappy__snappy__0_4
, org_tukaani__xz__1_9
, org_codehaus_plexus__plexus-utils__4_0_0
, commons-io__commons-io__2_15_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:4.9.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.9.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.9.2/plexus-archiver-4.9.2.jar";
        sha256 = "a837bd7d73291564dc8e8c826de0fede75896527a35bdcddb77b0545ee656a4c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.9.2/plexus-archiver-4.9.2.pom";
        sha256 = "7b4a569c92f60c859ae69594f8935d11bcbb940d86c518742c30f0925a48ba9f";
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
      drv = org_apache_commons__commons-compress__1_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_github_luben__zstd-jni__1_5_5-11;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__17;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_14_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__1_9;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_15_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
