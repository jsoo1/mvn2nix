{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compiler-api__jar__2_15_0
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_codehaus_plexus__plexus-compiler-manager__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-manager:jar:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-manager";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-manager/2.15.0/plexus-compiler-manager-2.15.0.jar";
      sha256 = "c13b12c32a18b00e457de9b93cfc3d5593bfa1fb992b2c46a3498be1a77c4889";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-compiler-api__jar__2_15_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
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
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-manager__pom__2_15_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
