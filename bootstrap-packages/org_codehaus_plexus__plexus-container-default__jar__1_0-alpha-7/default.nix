{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_1
, plexus__plexus-utils__jar__1_0_2
, classworlds__classworlds__jar__1_1-alpha-2
, org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-7/plexus-container-default-1.0-alpha-7.jar";
      sha256 = "b063d6ff58441efdad772d239f83adb56b10db7b5a2a7183ee9877337201ee1f";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = plexus__plexus-utils__jar__1_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__pom__1_0-alpha-7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
