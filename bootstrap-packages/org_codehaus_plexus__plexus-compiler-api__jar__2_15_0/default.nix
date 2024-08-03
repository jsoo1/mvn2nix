{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-compiler-api__pom__2_15_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-api:jar:2.15.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-api";
  version = "2.15.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-api/2.15.0/plexus-compiler-api-2.15.0.jar";
      sha256 = "d31d744eb69f77dffd3722dca4094758e0f90e79918a7b3b9fdc37ce49b60342";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-compiler-api__pom__2_15_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
