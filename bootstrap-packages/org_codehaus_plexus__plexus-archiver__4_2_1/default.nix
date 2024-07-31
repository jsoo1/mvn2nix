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
  name = "org.codehaus.plexus:plexus-archiver:4.2.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.1/plexus-archiver-4.2.1.jar";
        sha256 = "c5bb0a59716c337125e8c760f55ebea9a8f7cc30194c54df3d2ae7258a6f9e35";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.1/plexus-archiver-4.2.1.pom";
        sha256 = "2b1aa2adef45630f4668144c7c22f829bf6d1f7d96aaeae178096c9dfcd05204";
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
