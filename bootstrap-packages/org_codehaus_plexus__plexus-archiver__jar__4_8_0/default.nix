{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_codehaus_plexus__plexus-io__jar__3_4_1
, commons-io__commons-io__jar__2_13_0
, org_apache_commons__commons-compress__jar__1_23_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_9
, com_github_luben__zstd-jni__jar__1_5_5-5
, org_codehaus_plexus__plexus-archiver__pom__4_8_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:jar:4.8.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.8.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.8.0/plexus-archiver-4.8.0.jar";
      sha256 = "24513c9bc6d52716f5a22f7ef03e26c310f62ebcde309de9833deac6a4ac32e3";
    };
  };
  dependencies = [
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
      drv = org_codehaus_plexus__plexus-archiver__pom__4_8_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
