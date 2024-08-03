{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-io__jar__3_2_0
, commons-io__commons-io__jar__2_6
, org_apache_commons__commons-compress__jar__1_19
, org_iq80_snappy__snappy__jar__0_4
, org_tukaani__xz__jar__1_8
, org_codehaus_plexus__plexus-archiver__pom__4_2_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:jar:4.2.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.1/plexus-archiver-4.2.1.jar";
      sha256 = "c5bb0a59716c337125e8c760f55ebea9a8f7cc30194c54df3d2ae7258a6f9e35";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-io__jar__3_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__jar__1_19;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_iq80_snappy__snappy__jar__0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_tukaani__xz__jar__1_8;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-archiver__pom__4_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
