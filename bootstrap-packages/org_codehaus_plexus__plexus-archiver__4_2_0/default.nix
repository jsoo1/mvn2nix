{
  lib
, pkgs
, patchMavenJar
, org_tukaani__xz__1_8
, org_apache_commons__commons-compress__1_19
, org_codehaus_plexus__plexus__pom__5_1
, org_codehaus_plexus__plexus-io__3_2_0
, org_iq80_snappy__snappy__0_4
, org_codehaus_plexus__plexus-utils__3_3_0
, commons-io__commons-io__2_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:4.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.0/plexus-archiver-4.2.0.jar";
        sha256 = "2a8143caa8c0eb047b7c0f998aa5bbbd9eb8926a59ec11ca6bc86b37363b26b0";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.0/plexus-archiver-4.2.0.pom";
        sha256 = "aa6ce1f10002697df86634c5b6645e9d003a73a50b97a4a5eadd91cd9de1ad10";
      };
    }
  ];
  dependencies = [
    {
      drv = org_tukaani__xz__1_8;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__1_19;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__3_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_6;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
