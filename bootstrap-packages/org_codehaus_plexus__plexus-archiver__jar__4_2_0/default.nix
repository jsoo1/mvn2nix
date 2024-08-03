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
, org_codehaus_plexus__plexus-archiver__pom__4_2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:jar:4.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.0/plexus-archiver-4.2.0.jar";
      sha256 = "2a8143caa8c0eb047b7c0f998aa5bbbd9eb8926a59ec11ca6bc86b37363b26b0";
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
      drv = org_codehaus_plexus__plexus-archiver__pom__4_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
