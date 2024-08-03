{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, javax_inject__javax_inject__jar__1
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-compiler-api__jar__2_15_0
, org_codehaus_plexus__plexus-compiler-javac__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-javac:jar:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-javac";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.15.0/plexus-compiler-javac-2.15.0.jar";
      sha256 = "89603334988453b9cf4d7ec404d4b54f140de28b678d6a8e8edc448240dd0e90";
    };
  };
  dependencies = [
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
      drv = org_codehaus_plexus__plexus-compiler-api__jar__2_15_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-javac__pom__2_15_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
